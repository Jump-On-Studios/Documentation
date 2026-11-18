<script setup>
// Purchase block for the top of a script's documentation page: <BuyScript script="fivem/tow-truck-with-winch-v2" />
// Most visitors coming from a search engine have not bought the script yet.
//
// Everything shown comes from the store (name, short description, thumbnail, trailers): it is fetched once at
// build time (attachStoreScripts in markdownComponents.mjs) and refreshed on each deployment. If the store did
// not answer during the build, the block keeps its button and loses the rest.
// The link carries UTM parameters so the store can count these visits.
// No price on purpose: the store runs promotions, a price frozen at build time would be wrong during them.
import { computed } from 'vue'
import { useData } from 'vitepress'

const STORE_URL = 'https://jumpon-studios.com'

const props = defineProps({
  // Store path of the script: <game>/<link>, as in https://jumpon-studios.com/<game>/<link>
  script: { type: String, required: true },
  // Bold line of the block: the page title already names the script
  title: { type: String, default: "Don't have this script yet?" },
})

const { page } = useData()
const store = computed(() => page.value.storeScripts?.[props.script] || null)
const link = computed(() => props.script.split('/').pop())
const storeUrl = computed(
  () => `${STORE_URL}/${props.script}?utm_source=docs&utm_medium=referral&utm_campaign=buy-block&utm_content=${link.value}`,
)
const thumbnail = computed(() => (store.value?.thumbnail ? `${STORE_URL}/images/thumbnails/${store.value.thumbnail}` : ''))
const trailers = computed(() => store.value?.youtube || [])
</script>

<template>
  <div class="buy-script-wrap">
    <aside class="buy-script" :aria-label="store ? `Buy ${store.name}` : 'Buy this script'">
      <a v-if="thumbnail" class="buy-script__media" :href="storeUrl" tabindex="-1" aria-hidden="true">
        <img :src="thumbnail" alt="" width="1920" height="1080" loading="eager" />
      </a>
      <div class="buy-script__body">
        <p class="buy-script__title">{{ title }}</p>
        <p v-if="store?.description" class="buy-script__pitch">{{ store.description }}</p>
      </div>
      <a class="buy-script__button" :href="storeUrl">Buy on the store</a>
    </aside>

    <details v-if="trailers.length" class="buy-script__trailer">
      <summary>{{ trailers.length > 1 ? 'Watch the trailers' : 'Watch the trailer' }}</summary>
      <div class="buy-script__videos">
        <iframe
          v-for="id in trailers"
          :key="id"
          :src="`https://www.youtube.com/embed/${id}`"
          :title="store ? `${store.name} trailer` : 'Trailer'"
          width="560"
          height="315"
          loading="lazy"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
      </div>
    </details>
  </div>
</template>

<style scoped>
.buy-script-wrap {
  margin: 16px 0 20px;
}

/* One slim row on desktop: the documentation stays the subject of the page */
.buy-script {
  display: flex;
  align-items: center;
  gap: 14px;
  padding: 10px 14px 10px 10px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 10px;
  background: var(--vp-c-bg-soft);
}

.buy-script__media {
  flex: none;
  width: 112px;
  border-radius: 6px;
  overflow: hidden;
  line-height: 0;
}

.buy-script__media img {
  width: 100%;
  height: auto;
  aspect-ratio: 16 / 9;
  object-fit: cover;
}

.buy-script__body {
  flex: 1;
  min-width: 0;
}

.buy-script__title {
  margin: 0;
  font-size: 0.95rem;
  font-weight: 600;
  line-height: 1.35;
  color: var(--vp-c-text-1);
}

/* The store's short description, kept to two lines */
.buy-script__pitch {
  margin: 2px 0 0;
  color: var(--vp-c-text-2);
  font-size: 0.875rem;
  line-height: 1.45;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  line-clamp: 2;
  overflow: hidden;
}

.buy-script__button {
  flex: none;
  display: inline-block;
  padding: 7px 16px;
  border-radius: 8px;
  background: var(--vp-button-brand-bg);
  color: var(--vp-button-brand-text);
  font-weight: 600;
  font-size: 0.875rem;
  white-space: nowrap;
  text-decoration: none;
  transition: background-color 0.2s;
}

.buy-script__button:hover {
  background: var(--vp-button-brand-hover-bg);
  color: var(--vp-button-brand-hover-text);
}

.buy-script__button:focus-visible,
.buy-script__trailer summary:focus-visible {
  outline: 2px solid var(--vp-c-brand-1);
  outline-offset: 2px;
}

.buy-script__trailer {
  margin-top: 8px;
  font-size: 0.875rem;
}

.buy-script__trailer summary {
  display: inline-block;
  cursor: pointer;
  font-weight: 500;
  color: var(--vp-c-brand-1);
  border-radius: 4px;
  list-style: none;
}

.buy-script__trailer summary::before {
  content: '▸';
  display: inline-block;
  width: 1em;
}

.buy-script__trailer[open] summary::before {
  content: '▾';
}

.buy-script__trailer summary::-webkit-details-marker {
  display: none;
}

.buy-script__videos {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(100%, 320px), 1fr));
  gap: 12px;
  margin-top: 10px;
}

.buy-script__videos iframe {
  width: 100%;
  max-width: 640px;
  height: auto;
  aspect-ratio: 16 / 9;
  border-radius: 8px;
}

@media (max-width: 640px) {
  .buy-script {
    flex-wrap: wrap;
    gap: 10px 12px;
    padding: 10px;
  }

  .buy-script__media {
    width: 88px;
  }

  .buy-script__button {
    flex: 1 0 100%;
    text-align: center;
  }
}

@media (prefers-reduced-motion: reduce) {
  .buy-script__button {
    transition: none;
  }
}
</style>
