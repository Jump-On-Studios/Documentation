<script setup>
// Purchase block for the top of a script's documentation page: most visitors coming from a search engine
// have not bought the script yet. The link carries UTM parameters so the store can measure these visits.
// No price here on purpose: the store runs promotions, a price written in the docs would be wrong during them.
import { computed } from 'vue'

const props = defineProps({
  // Script name as shown on the store
  name: { type: String, required: true },
  // Store path: https://jumpon-studios.com/<game>/<link>
  game: { type: String, required: true },
  link: { type: String, required: true },
  // Image in docs/public (16:9 thumbnail of the store)
  image: { type: String, default: '' },
  // YouTube id of the trailer, shown beside the buy button
  youtube: { type: String, default: '' },
})

const storeUrl = computed(
  () =>
    `https://jumpon-studios.com/${props.game}/${props.link}` +
    `?utm_source=docs&utm_medium=referral&utm_campaign=buy-block&utm_content=${props.link}`,
)
const trailerUrl = computed(() => `https://www.youtube.com/watch?v=${props.youtube}`)
</script>

<template>
  <aside class="buy-script" :aria-label="`Buy ${name}`">
    <a v-if="image" class="buy-script__media" :href="storeUrl">
      <img :src="image" :alt="`${name} on the Jump On Studios store`" width="1920" height="1080" loading="eager" />
    </a>
    <div class="buy-script__body">
      <p class="buy-script__title">{{ name }}</p>
      <div class="buy-script__pitch">
        <slot />
      </div>
      <div class="buy-script__actions">
        <a class="buy-script__button" :href="storeUrl">Buy on the store</a>
        <a v-if="youtube" class="buy-script__link" :href="trailerUrl" target="_blank" rel="noopener">Watch the trailer</a>
      </div>
    </div>
  </aside>
</template>

<style scoped>
.buy-script {
  display: grid;
  grid-template-columns: minmax(0, 5fr) minmax(0, 7fr);
  gap: 20px;
  align-items: center;
  margin: 20px 0 28px;
  padding: 16px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 12px;
  background: var(--vp-c-bg-soft);
}

.buy-script__media {
  display: block;
  border-radius: 8px;
  overflow: hidden;
  line-height: 0;
}

.buy-script__media img {
  width: 100%;
  height: auto;
  aspect-ratio: 16 / 9;
  object-fit: cover;
}

.buy-script__title {
  margin: 0;
  font-size: 1.15rem;
  font-weight: 600;
  line-height: 1.3;
  color: var(--vp-c-text-1);
}

.buy-script__pitch {
  margin-top: 6px;
  color: var(--vp-c-text-2);
  font-size: 0.95rem;
  line-height: 1.55;
}

.buy-script__pitch :deep(p) {
  margin: 0;
}

.buy-script__actions {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 8px 18px;
  margin-top: 14px;
}

.buy-script__button {
  display: inline-block;
  padding: 9px 20px;
  border-radius: 8px;
  background: var(--vp-button-brand-bg);
  color: var(--vp-button-brand-text);
  font-weight: 600;
  font-size: 0.95rem;
  text-decoration: none;
  transition: background-color 0.2s;
}

.buy-script__button:hover {
  background: var(--vp-button-brand-hover-bg);
  color: var(--vp-button-brand-hover-text);
}

.buy-script__button:focus-visible,
.buy-script__link:focus-visible,
.buy-script__media:focus-visible {
  outline: 2px solid var(--vp-c-brand-1);
  outline-offset: 2px;
}

.buy-script__link {
  font-size: 0.95rem;
  font-weight: 500;
}

@media (max-width: 640px) {
  .buy-script {
    grid-template-columns: minmax(0, 1fr);
    gap: 14px;
  }
}

@media (prefers-reduced-motion: reduce) {
  .buy-script__button {
    transition: none;
  }
}
</style>
