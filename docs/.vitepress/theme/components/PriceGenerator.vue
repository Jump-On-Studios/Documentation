<script setup>
import { ref, computed, watchEffect } from 'vue'
import { codeToHtml } from 'shiki'

const TYPES = [
  { value: 'money', label: 'Money' },
  { value: 'gold', label: 'Gold' },
  { value: 'rol', label: 'Rol' },
  { value: 'item', label: 'Item' },
]

const copied = ref(false)
const options = ref([createOption()])

function createComponent(type = 'money') {
  return {
    type,
    value: 1,
    itemName: '',
    quantity: 1,
    keep: false,
  }
}

function createOption() {
  return {
    components: [createComponent('money')],
  }
}

function addComponent(option, type = 'money') {
  option.components.push(createComponent(type))
}

function removeComponent(option, index) {
  option.components.splice(index, 1)
}

function addOption() {
  options.value.push(createOption())
}

function removeOption(index) {
  if (options.value.length > 1) {
    options.value.splice(index, 1)
  }
}

function formatNumber(value) {
  const number = Number(value)
  return Number.isFinite(number) ? number : 0
}

function getOptionParts(option) {
  const currencyTotals = {}
  const items = []

  for (const component of option.components) {
    if (component.type === 'item') {
      const name = component.itemName.trim() || 'item_name'
      const quantity = Math.max(1, Number(component.quantity) || 1)
      const keep = component.keep === true

      items.push({ name, quantity, keep })
    } else {
      const value = formatNumber(component.value)
      currencyTotals[component.type] = (currencyTotals[component.type] || 0) + value
    }
  }

  const currencies = Object.entries(currencyTotals)
    .filter(([, value]) => value !== 0)
    .map(([type, value]) => `${type} = ${value}`)

  const canInlineItem = items.length === 1 && items[0].quantity === 1 && items[0].keep === false
  const itemParts = items.map((item) => {
    const parts = [`item = "${item.name}"`]
    if (item.quantity !== 1) parts.push(`quantity = ${item.quantity}`)
    if (item.keep) parts.push('keep = true')
    return parts
  })

  if (canInlineItem) {
    return [...itemParts[0], ...currencies]
  }

  return [
    ...itemParts.map(parts => `{ ${parts.join(', ')} }`),
    ...currencies,
  ]
}

function generateSingleOptionLua(option) {
  const parts = getOptionParts(option)

  if (parts.length === 1) {
    const money = parts[0].match(/^money = (.+)$/)
    if (money) return money[1]

    return parts[0].startsWith('{') ? parts[0] : `{ ${parts[0]} }`
  }

  return `{
    ${generateOptionLua(option)}
}`
}

function generateOptionLua(option) {
  const parts = getOptionParts(option)
  return `{ ${parts.join(', ')} }`
}

const generatedCode = computed(() => {
  if (options.value.length === 1) {
    return generateSingleOptionLua(options.value[0])
  }

  const lines = []
  options.value.forEach((option, index) => {
    if (index > 0) {
      lines.push('    -- or')
    }

    const suffix = index < options.value.length - 1 ? ',' : ''
    lines.push(`    ${generateOptionLua(option)}${suffix}`)
  })

  return `{
${lines.join('\n')}
}`
})

const highlightedCode = ref('')

watchEffect(async () => {
  highlightedCode.value = await codeToHtml(generatedCode.value, {
    lang: 'lua',
    themes: {
      light: 'light-plus',
      dark: 'slack-dark',
    },
    defaultColor: false,
  })
})

async function copyCode() {
  try {
    await navigator.clipboard.writeText(generatedCode.value)
  } catch {
    const textarea = document.createElement('textarea')
    textarea.value = generatedCode.value
    textarea.style.position = 'fixed'
    textarea.style.opacity = '0'
    document.body.appendChild(textarea)
    textarea.select()
    document.execCommand('copy')
    document.body.removeChild(textarea)
  }

  copied.value = true
  setTimeout(() => { copied.value = false }, 2000)
}
</script>

<template>
  <div class="price-generator">
    <div class="pg-section-title">Payment options</div>

    <div class="pg-layout">
      <div class="pg-left">
        <template v-for="(option, optionIndex) in options" :key="optionIndex">
          <div class="pg-option-card">
          <div class="pg-option-header">
            <span class="pg-option-label">Option {{ optionIndex + 1 }}</span>
            <button
              v-if="options.length > 1"
              class="pg-btn-icon pg-btn-danger"
              type="button"
              title="Remove option"
              @click="removeOption(optionIndex)"
            >
              x
            </button>
          </div>

          <div v-for="(component, componentIndex) in option.components" :key="componentIndex" class="pg-component">
            <div class="pg-component-row">
              <Select
                v-model="component.type"
                :options="TYPES"
                optionLabel="label"
                optionValue="value"
                class="pg-select-type"
              />

              <template v-if="component.type !== 'item'">
                <input
                  v-model.number="component.value"
                  type="number"
                  min="0"
                  step="0.01"
                  class="pg-input pg-input-md"
                  placeholder="Amount"
                />
              </template>

              <template v-else>
                <input
                  v-model.number="component.quantity"
                  type="number"
                  min="1"
                  step="1"
                  class="pg-input pg-input-xs"
                />
                <span class="pg-label-inline">x</span>
                <input
                  v-model="component.itemName"
                  type="text"
                  class="pg-input pg-input-grow"
                  placeholder="Item name"
                />
                <label class="pg-checkbox pg-checkbox-inline">
                  <input v-model="component.keep" type="checkbox" />
                  <span>Keep</span>
                </label>
              </template>

              <button
                class="pg-btn-icon pg-btn-danger"
                type="button"
                title="Remove"
                @click="removeComponent(option, componentIndex)"
              >
                x
              </button>
            </div>
          </div>

          <button class="pg-btn pg-btn-add" type="button" @click="addComponent(option)">+ Add cost</button>
        </div>
          <div v-if="optionIndex < options.length - 1" class="pg-or-separator">or</div>
        </template>

        <button class="pg-btn pg-btn-option" type="button" @click="addOption">+ Add payment option</button>
      </div>

      <div class="pg-right">
        <div class="pg-code-block">
          <div class="pg-code-header">
            <span>Lua</span>
            <button class="pg-btn-copy" type="button" @click="copyCode">
              {{ copied ? 'Copied!' : 'Copy' }}
            </button>
          </div>
          <div class="pg-code-body vp-adaptive-theme" v-html="highlightedCode"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.price-generator {
  margin-top: 1.5rem;
}

.pg-layout {
  display: flex;
  gap: 1.5rem;
  align-items: flex-start;
}

.pg-left,
.pg-right {
  flex: 1;
  min-width: 0;
}

.pg-right {
  position: sticky;
  top: calc(var(--vp-nav-height) + 1rem);
}

.pg-section-title {
  margin-bottom: 0.75rem;
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
  font-weight: 600;
  letter-spacing: 0.05em;
  text-transform: uppercase;
}

.pg-option-card {
  margin-bottom: 0.75rem;
  padding: 0.75rem 1rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 8px;
  background: var(--vp-c-bg-soft);
}

.pg-option-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.pg-option-label {
  color: var(--vp-c-brand-1);
  font-size: 0.85rem;
  font-weight: 600;
}

.pg-or-separator {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: -0.25rem 0 0.5rem;
  color: var(--vp-c-text-3);
  font-size: 0.8rem;
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}

.pg-component {
  margin-bottom: 0.5rem;
}

.pg-component-row {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  flex-wrap: nowrap;
  overflow-x: auto;
}

.pg-input {
  padding: 0.45rem 0.65rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 8px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
  font-family: inherit;
  font-size: 0.85rem;
  outline: none;
  transition: border-color 0.15s;
}

.pg-input:focus {
  border-color: var(--vp-c-brand-1);
}

.pg-select-type {
  width: 120px;
  flex-shrink: 0;
}

.pg-select-type :deep(.p-select) {
  width: 100%;
  font-family: inherit;
  font-size: 0.85rem;
}

.pg-input-md {
  width: 120px;
}

.pg-input-xs {
  width: 60px;
  text-align: center;
}

.pg-input-grow {
  flex: 1;
  min-width: 120px;
}

.pg-label-inline {
  flex-shrink: 0;
  color: var(--vp-c-text-3);
  font-size: 0.85rem;
}

.pg-checkbox {
  display: flex;
  align-items: center;
  gap: 0.3rem;
  color: var(--vp-c-text-2);
  font-size: 0.8rem;
  white-space: nowrap;
  cursor: pointer;
  user-select: none;
}

.pg-checkbox input[type="checkbox"] {
  width: 16px;
  height: 16px;
  accent-color: var(--vp-c-brand-1);
  cursor: pointer;
}

.pg-btn,
.pg-btn-copy {
  font-family: inherit;
  cursor: pointer;
  transition: all 0.15s;
}

.pg-btn {
  padding: 0.45rem 0.85rem;
  border: 1px dashed var(--vp-c-border);
  border-radius: 8px;
  background: transparent;
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
}

.pg-btn:hover {
  border-color: var(--vp-c-brand-1);
  color: var(--vp-c-brand-1);
}

.pg-btn-add {
  padding: 0.35rem 0.75rem;
  font-size: 0.8rem;
}

.pg-btn-option {
  width: 100%;
  text-align: center;
}

.pg-btn-icon {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 28px;
  height: 28px;
  flex-shrink: 0;
  padding: 0;
  border: none;
  border-radius: 6px;
  background: transparent;
  font-size: 0.85rem;
  cursor: pointer;
  transition: all 0.15s;
}

.pg-btn-danger {
  color: var(--vp-c-text-3);
}

.pg-btn-danger:hover {
  background: rgba(229, 62, 62, 0.1);
  color: #e53e3e;
}

.pg-code-block {
  border: 1px solid var(--vp-c-border);
  border-radius: 8px;
  overflow: hidden;
}

.pg-code-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.4rem 1rem;
  border-bottom: 1px solid var(--vp-c-border);
  background: var(--vp-c-bg-soft);
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
  font-weight: 500;
}

.pg-btn-copy {
  padding: 0.25rem 0.65rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 6px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-2);
  font-size: 0.8rem;
}

.pg-btn-copy:hover {
  border-color: var(--vp-c-brand-1);
  color: var(--vp-c-brand-1);
}

.pg-code-body {
  background: var(--vp-code-block-bg);
}

.pg-code-body :deep(pre) {
  margin: 0;
  padding: 1rem;
  background: transparent !important;
  overflow-x: auto;
}

.pg-code-body :deep(code) {
  font-family: var(--vp-font-family-mono);
  font-size: var(--vp-code-font-size);
  line-height: var(--vp-code-line-height);
  white-space: pre;
}

html:not(.dark) .pg-code-body :deep(span) {
  color: var(--shiki-light);
}

html.dark .pg-code-body :deep(span) {
  color: var(--shiki-dark);
}

@media (max-width: 768px) {
  .pg-layout {
    flex-direction: column;
  }

  .pg-right {
    width: 100%;
    position: static;
  }

  .pg-component-row {
    gap: 0.35rem;
  }
}
</style>
