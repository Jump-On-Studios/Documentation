<script setup lang="ts">
import type { MenuItem } from '../composables/outline'

defineProps<{
  headers: MenuItem[]
  root?: boolean
}>()

function onClick({ currentTarget: el }: Event) {
  const id = (el as HTMLAnchorElement).href!.split('#')[1]
  const heading = document.getElementById(decodeURIComponent(id))
  heading?.focus({ preventScroll: true })
}

// Splits a code name like jo.component.getBodiesLowerFromSkinTone() into its namespace (jo.component.) and its own name, so that only the namespace gets cut with "…" when space runs out
function splitName(title: string) {
  if (/[<&]/.test(title)) return null
  const match = title.match(/^((?:[\w$]+[.:])+)([\w$].*)$/)
  return match ? { namespace: match[1], name: match[2] } : null
}
</script>

<template>
  <ul :class="root ? 'root' : 'nested'">
    <li v-for="{ children, link, title, badge } in headers">

      <a class="outline-link" :href="link" @click="onClick" :title="title">
        <span v-if="badge" :class="badge.classList.toString()">
          {{ badge.textContent }}
        </span>
        <span v-if="splitName(title)" class="outline-title code-name">
          <span class="namespace">{{ splitName(title)!.namespace }}</span>
          <span class="name">{{ splitName(title)!.name }}</span>
        </span>
        <span v-else class="outline-title" v-html="title"></span>
      </a>
      <template v-if="children?.length">
        <VPDocOutlineItem :headers="children" />
      </template>
    </li>
  </ul>
</template>

<style scoped>
.root {
  position: relative;
  z-index: 1;
}

.nested {
  padding-left: 16px;
}

.outline-link {
  display: flex;
  align-items: center;
  gap: 4px;
  line-height: 28px;
  color: var(--vp-c-text-2);
  transition: color 0.5s;
  font-weight: 400;
}

.outline-link .VPBadge {
  flex-shrink: 0;
  white-space: nowrap;
}

.outline-title {
  min-width: 0;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

/* The namespace gives way first; the name itself is cut only if it is wider than the whole outline */
.code-name {
  display: flex;
}

.code-name .namespace {
  min-width: 0;
  overflow: hidden;
  text-overflow: ellipsis;
}

.code-name .name {
  flex-shrink: 0;
  max-width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
}

.outline-link:hover,
.outline-link.active {
  color: var(--vp-c-text-1);
  transition: color 0.25s;
}

.outline-link.nested {
  padding-left: 13px;
}
</style>
