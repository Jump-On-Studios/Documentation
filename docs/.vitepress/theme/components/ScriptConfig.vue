<script setup>
import { ref, onMounted } from 'vue'
import { codeToHtml } from 'shiki'

const props = defineProps({
  scriptPath: {
    type: String,
    required: true,
  },
})

const files = ref([])
const loading = ref(true)
const error = ref(null)
const highlightedBlocks = ref({})

async function fetchConfig() {
  loading.value = true
  error.value = null
  try {
    const res = await fetch(`https://jumpon-studios.com/api/scripts/config/${props.scriptPath}`)
    const data = await res.json()
    if (data.success && data.files) {
      files.value = data.files
      await highlightAll(data.files)
    } else {
      error.value = 'Failed to load configuration files.'
    }
  } catch (e) {
    error.value = 'Failed to fetch configuration.'
  } finally {
    loading.value = false
  }
}

async function highlightAll(fileList) {
  const results = {}
  await Promise.all(
    fileList.map(async (file, index) => {
      results[index] = await codeToHtml(file.content, {
        lang: 'lua',
        themes: {
          light: 'light-plus',
          dark: 'slack-dark',
        },
      })
    })
  )
  highlightedBlocks.value = results
}

function copyCode(content) {
  navigator.clipboard.writeText(content)
}

onMounted(() => {
  fetchConfig()
})
</script>

<template>
  <div v-if="loading" class="sc-loading-wrapper">
    <div class="sc-loading">
      <div class="sc-spinner"></div>
      <span>Loading configuration...</span>
    </div>
  </div>

  <div v-else-if="error" class="sc-error">{{ error }}</div>

  <div v-else-if="files.length" class="vp-code-group">
    <div class="tabs">
      <template v-for="(file, index) in files" :key="index">
        <input
          type="radio"
          :name="`sc-group-${scriptPath}`"
          :id="`sc-tab-${scriptPath}-${index}`"
          :checked="index === 0"
        />
        <label :for="`sc-tab-${scriptPath}-${index}`">{{ file.fileName }}</label>
      </template>
    </div>
    <div class="blocks">
      <div
        v-for="(file, index) in files"
        :key="index"
        class="language-lua vp-adaptive-theme"
        :class="{ active: index === 0 }"
      >
        <button class="copy" @click="copyCode(file.content)" title="Copy"></button>
        <span class="lang">lua</span>
        <div v-html="highlightedBlocks[index]" class="sc-code-content"></div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.sc-code-content :deep(pre) {
  margin: 0;
  padding: 20px 24px;
  background: var(--vp-code-block-bg) !important;
  overflow-x: auto;
}

.sc-code-content :deep(code) {
  font-family: var(--vp-font-family-mono);
  font-size: var(--vp-code-font-size);
  line-height: var(--vp-code-line-height);
  white-space: pre;
}

.sc-loading-wrapper {
  margin-top: 16px;
}

.sc-loading {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 24px;
  color: var(--vp-c-text-2);
  font-size: 14px;
  background-color: var(--vp-code-block-bg);
  border-radius: 8px;
}

.sc-spinner {
  width: 20px;
  height: 20px;
  border: 2px solid var(--vp-c-border);
  border-top-color: var(--vp-c-brand-1);
  border-radius: 50%;
  animation: sc-spin 0.6s linear infinite;
}

@keyframes sc-spin {
  to { transform: rotate(360deg); }
}

.sc-error {
  margin-top: 16px;
  padding: 24px;
  color: var(--vp-c-danger-1);
  font-size: 14px;
  background-color: var(--vp-code-block-bg);
  border-radius: 8px;
}
</style>
