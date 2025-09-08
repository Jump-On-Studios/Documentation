<script setup lang="ts">
import type { MenuItem } from '../composables/outline'

defineProps<{
  headers: MenuItem[]
  root?: boolean
}>()

function onClick({ target: el }: Event) {
  const id = (el as HTMLAnchorElement).href!.split('#')[1]
  const heading = document.getElementById(decodeURIComponent(id))
  heading?.focus({ preventScroll: true })
}
</script>

<template>
  <ul :class="root ? 'root' : 'nested'">
    <li v-for="{ children, link, title, badge } in headers">

      <a class="outline-link" :href="link" @click="onClick" :title="title">
        <span v-if="badge" :class="badge.classList.toString()">
          {{ badge.textContent }}
        </span>
        <span v-html="title"></span>
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
  overflow: hidden;
  transition: color 0.5s;
  font-weight: 400;

  span {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;

  }
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
