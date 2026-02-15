<script setup>
import { ref, computed, watch } from 'vue'

const TYPES = [
  { value: 'money', label: 'Money' },
  { value: 'gold', label: 'Gold' },
  { value: 'rol', label: 'Rol' },
  { value: 'item', label: 'Item' },
]

const useOr = ref(false)
const copied = ref(false)

function createComponent(type = 'money') {
  return { type, value: 1, itemName: '', quantity: 1, keep: false }
}

function createOption() {
  return { components: [] }
}

const singleOption = ref(createOption())
const multiOptions = ref([createOption()])

function cloneComponents(components) {
  return components.map(c => ({ ...c }))
}

watch(useOr, (isOr) => {
  if (isOr) {
    // Copy single → first multi option
    multiOptions.value[0] = { components: cloneComponents(singleOption.value.components) }
  } else {
    // Copy first multi option → single
    singleOption.value = { components: cloneComponents(multiOptions.value[0].components) }
  }
})

function addComponentTo(option) {
  option.components.push(createComponent('money'))
}

function removeComponentFrom(option, idx) {
  option.components.splice(idx, 1)
}

function addMultiOption() {
  multiOptions.value.push(createOption())
}

function removeMultiOption(idx) {
  if (multiOptions.value.length > 1) {
    multiOptions.value.splice(idx, 1)
  }
}

function generateOptionLua(option) {
  // Merge currencies by type (money, gold, rol)
  const currencyTotals = {}
  // Merge items by name
  const itemMap = {}

  for (const comp of option.components) {
    if (comp.type === 'item') {
      const name = comp.itemName.trim() || 'item_name'
      if (itemMap[name]) {
        itemMap[name].quantity += (comp.quantity || 1)
        if (comp.keep) itemMap[name].keep = true
      } else {
        itemMap[name] = { quantity: comp.quantity || 1, keep: comp.keep }
      }
    } else {
      const val = parseFloat(comp.value) || 0
      currencyTotals[comp.type] = (currencyTotals[comp.type] || 0) + val
    }
  }

  const items = Object.entries(itemMap).map(([name, data]) => {
    const parts = [`item = "${name}"`]
    if (data.quantity > 1) parts.push(`quantity = ${data.quantity}`)
    if (data.keep) parts.push(`keep = true`)
    return `{ ${parts.join(', ')} }`
  })

  const currencies = Object.entries(currencyTotals).map(([type, val]) => `${type} = ${val}`)

  return [...items, ...currencies].join(', ')
}

const generatedCode = computed(() => {
  if (useOr.value) {
    const lines = multiOptions.value.map(opt => {
      const inner = generateOptionLua(opt)
      return `    { ${inner} }`
    })
    return `{\n    operator = "or",\n${lines.join(',\n')}\n}`
  } else {
    const inner = generateOptionLua(singleOption.value)
    return `{ ${inner} }`
  }
})

async function copyCode() {
  try {
    await navigator.clipboard.writeText(generatedCode.value)
  } catch {
    const ta = document.createElement('textarea')
    ta.value = generatedCode.value
    ta.style.position = 'fixed'
    ta.style.opacity = '0'
    document.body.appendChild(ta)
    ta.select()
    document.execCommand('copy')
    document.body.removeChild(ta)
  }
  copied.value = true
  setTimeout(() => { copied.value = false }, 2000)
}
</script>

<template>
  <div class="price-generator">
    <!-- OR toggle -->
    <div class="pg-section">
      <label class="pg-checkbox">
        <input type="checkbox" v-model="useOr" />
        <span>Use <code>operator = "or"</code> (player chooses one payment option)</span>
      </label>
    </div>

    <!-- Single option mode -->
    <div v-if="!useOr" class="pg-section">
      <div class="pg-section-title">Price components</div>
      <div class="pg-option-card">
        <div v-for="(comp, cIdx) in singleOption.components" :key="cIdx" class="pg-component">
          <div class="pg-component-row">
            <Select v-model="comp.type" :options="TYPES" optionLabel="label" optionValue="value" class="pg-select-type" />

            <!-- Money / Gold / Rol -->
            <template v-if="comp.type !== 'item'">
              <input type="number" v-model.number="comp.value" min="0" step="0.01" class="pg-input pg-input-md" placeholder="Amount" />
            </template>

            <!-- Item -->
            <template v-else>
              <input type="number" v-model.number="comp.quantity" min="1" class="pg-input pg-input-xs" />
              <span class="pg-label-inline">x</span>
              <input type="text" v-model="comp.itemName" class="pg-input pg-input-grow" placeholder="Item name" />
              <label class="pg-checkbox pg-checkbox-inline">
                <input type="checkbox" v-model="comp.keep" />
                <span>Keep</span>
              </label>
            </template>

            <button class="pg-btn-icon pg-btn-danger" @click="removeComponentFrom(singleOption, cIdx)" title="Remove">✕</button>
          </div>
        </div>
        <button class="pg-btn pg-btn-add" @click="addComponentTo(singleOption)">+ Add</button>
      </div>
    </div>

    <!-- Multiple options mode (OR) -->
    <div v-else class="pg-section">
      <div class="pg-section-title">Payment options</div>
      <div v-for="(option, oIdx) in multiOptions" :key="oIdx" class="pg-option-card">
        <div class="pg-option-header">
          <span class="pg-option-label">Option {{ oIdx + 1 }}</span>
          <button v-if="multiOptions.length > 1" class="pg-btn-icon pg-btn-danger" @click="removeMultiOption(oIdx)" title="Remove option">✕</button>
        </div>
        <div v-for="(comp, cIdx) in option.components" :key="cIdx" class="pg-component">
          <div class="pg-component-row">
            <Select v-model="comp.type" :options="TYPES" optionLabel="label" optionValue="value" class="pg-select-type" />

            <template v-if="comp.type !== 'item'">
              <input type="number" v-model.number="comp.value" min="0" step="0.01" class="pg-input pg-input-md" placeholder="Amount" />
            </template>

            <template v-else>
              <input type="number" v-model.number="comp.quantity" min="1" class="pg-input pg-input-xs" />
              <span class="pg-label-inline">x</span>
              <input type="text" v-model="comp.itemName" class="pg-input pg-input-grow" placeholder="Item name" />
              <label class="pg-checkbox pg-checkbox-inline">
                <input type="checkbox" v-model="comp.keep" />
                <span>Keep</span>
              </label>
            </template>

            <button class="pg-btn-icon pg-btn-danger" @click="removeComponentFrom(option, cIdx)" title="Remove">✕</button>
          </div>
        </div>
        <button class="pg-btn pg-btn-add" @click="addComponentTo(option)">+ Add</button>
      </div>
      <button class="pg-btn pg-btn-option" @click="addMultiOption">+ Add payment option</button>
    </div>

    <!-- Generated Code -->
    <div class="pg-section">
      <div class="pg-code-block">
        <div class="pg-code-header">
          <span>Lua</span>
          <button class="pg-btn-copy" @click="copyCode">
            {{ copied ? 'Copied!' : 'Copy' }}
          </button>
        </div>
        <pre class="pg-code"><code>{{ generatedCode }}</code></pre>
      </div>
    </div>
  </div>
</template>

<style scoped>
.price-generator {
  margin-top: 1.5rem;
}

.pg-section {
  margin-bottom: 1.25rem;
}

.pg-section-title {
  font-size: 0.85rem;
  font-weight: 600;
  color: var(--vp-c-text-2);
  text-transform: uppercase;
  letter-spacing: 0.05em;
  margin-bottom: 0.75rem;
}

/* Checkbox */
.pg-checkbox {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  cursor: pointer;
  font-size: 0.9rem;
  color: var(--vp-c-text-1);
  user-select: none;
}

.pg-checkbox input[type="checkbox"] {
  width: 16px;
  height: 16px;
  accent-color: var(--vp-c-brand-1);
  cursor: pointer;
}

.pg-checkbox-inline {
  font-size: 0.8rem;
  gap: 0.3rem;
  white-space: nowrap;
  color: var(--vp-c-text-2);
}

/* Inputs */
.pg-select,
.pg-input {
  padding: 0.45rem 0.65rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 8px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
  font-size: 0.85rem;
  font-family: inherit;
  outline: none;
  transition: border-color 0.15s;
}

.pg-select:focus,
.pg-input:focus {
  border-color: var(--vp-c-brand-1);
}

.pg-select-type {
  width: 120px;
  flex-shrink: 0;
}

.pg-select-type :deep(.p-select) {
  font-size: 0.85rem;
  font-family: inherit;
  width: 100%;
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
  min-width: 100px;
}

.pg-label-inline {
  font-size: 0.85rem;
  color: var(--vp-c-text-3);
  flex-shrink: 0;
}

/* Option cards */
.pg-option-card {
  border: 1px solid var(--vp-c-border);
  border-radius: 10px;
  padding: 0.75rem 1rem;
  margin-bottom: 0.75rem;
  background: var(--vp-c-bg-soft);
}

.pg-option-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.pg-option-label {
  font-size: 0.85rem;
  font-weight: 600;
  color: var(--vp-c-brand-1);
}

/* Component rows */
.pg-component {
  margin-bottom: 0.5rem;
}

.pg-component-row {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  flex-wrap: wrap;
}

/* Buttons */
.pg-btn {
  padding: 0.45rem 0.85rem;
  border: 1px dashed var(--vp-c-border);
  border-radius: 8px;
  background: transparent;
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
  cursor: pointer;
  transition: all 0.15s;
  font-family: inherit;
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
  width: 28px;
  height: 28px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: none;
  border-radius: 6px;
  background: transparent;
  cursor: pointer;
  font-size: 0.85rem;
  transition: all 0.15s;
  flex-shrink: 0;
  padding: 0;
}

.pg-btn-danger {
  color: var(--vp-c-text-3);
}

.pg-btn-danger:hover {
  background: rgba(229, 62, 62, 0.1);
  color: #e53e3e;
}

/* Code output */
.pg-code-block {
  border: 1px solid var(--vp-c-border);
  border-radius: 10px;
  overflow: hidden;
}

.pg-code-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.4rem 1rem;
  background: var(--vp-c-bg-soft);
  border-bottom: 1px solid var(--vp-c-border);
  font-size: 0.85rem;
  font-weight: 500;
  color: var(--vp-c-text-2);
}

.pg-btn-copy {
  padding: 0.25rem 0.65rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 6px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-2);
  font-size: 0.8rem;
  cursor: pointer;
  transition: all 0.15s;
  font-family: inherit;
}

.pg-btn-copy:hover {
  border-color: var(--vp-c-brand-1);
  color: var(--vp-c-brand-1);
}

.pg-code {
  margin: 0;
  padding: 1rem;
  background: var(--vp-code-block-bg);
  color: var(--vp-c-text-1);
  font-size: 0.85rem;
  line-height: 1.7;
  overflow-x: auto;
}

.pg-code code {
  font-family: var(--vp-font-family-mono);
  white-space: pre;
}

/* Responsive */
@media (max-width: 640px) {
  .pg-component-row {
    gap: 0.35rem;
  }

  .pg-select-type {
    width: 85px;
  }

  .pg-input-md {
    width: 90px;
  }
}
</style>
