<script setup>
  import DefaultTheme from 'vitepress/theme'
  import { useRoute, useRouter } from 'vitepress'
  import { computed, watch, onMounted, nextTick, ref } from "vue";
  import { useSidebar } from 'vitepress/theme'
  import mediumZoom from 'medium-zoom/dist/pure/medium-zoom.umd.js'
  const route = useRoute()
  
  // Redimensionnement de l'aside
  const isResizing = ref(false)
  const asideWidth = ref(null) // Pas de largeur par défaut
  let animationFrame = null

  const { sidebar } = useSidebar()
  const { Layout } = DefaultTheme

  let tempItems = []
  let currentLevel = 0

  function isPageIn(link, item, level) {
    tempItems[level] = item
    level ++
    currentLevel = level
    if (item.link == link)
      return true
    if (item.items) {
      for (let index = 0; index < item.items.length; index++) {
        const element = item.items[index];
        if (isPageIn(link,element, level))
         return true
      }
    }
    return false
  }

  const home = {icon: 'pi pi-home', link: '/', text:''}
  let items = computed(() => {
    const currentPath = route.path
    let found = false
    for (let index = 0; index < sidebar.value.length; index++) {
      const item = sidebar.value[index];
      tempItems = []
      if (isPageIn(currentPath, item, 0)) {
        found = true
        break
      }
    }
    if (!found) return []
    return tempItems.slice(0,currentLevel)
  })


  function stripHtml(html)
  {
    let tmp = document.createElement("DIV");
    tmp.innerHTML = html;
    const text = tmp.textContent || tmp.innerText || "";
    return text.replace(/\p{Emoji}/gu, '');
  }

  onMounted(() => {
    mediumZoom('[data-zoomable]', { background: 'var(--zoom-bg)' });
  })

  let a = computed(() => {
    return Math.random()
  })

  const initZoom = () => {
    mediumZoom('[data-zoomable]', { background: 'var(--zoom-bg)' });
  };
  
  // Fonctions de redimensionnement
  const startResize = (event) => {
    isResizing.value = true
    document.body.style.cursor = 'ew-resize'
    document.body.style.userSelect = 'none'
    
    const onMouseMove = (e) => {
      if (!isResizing.value) return
      
      if (animationFrame) {
        cancelAnimationFrame(animationFrame)
      }
      
      animationFrame = requestAnimationFrame(() => {
        const newWidth = window.innerWidth - e.clientX
        if (newWidth >= 200 && newWidth <= 800) {
          asideWidth.value = newWidth
          updateAsideWidth()
        }
      })
    }
    
    const onMouseUp = () => {
      isResizing.value = false
      document.body.style.cursor = ''
      document.body.style.userSelect = ''
      document.removeEventListener('mousemove', onMouseMove)
      document.removeEventListener('mouseup', onMouseUp)
    }
    
    document.addEventListener('mousemove', onMouseMove)
    document.addEventListener('mouseup', onMouseUp)
  }
  
  const updateAsideWidth = () => {
    if (!asideWidth.value) return // Ne rien faire si pas de largeur définie
    
    // Mettre à jour uniquement la variable CSS globale
    document.documentElement.style.setProperty('--aside-width', `${asideWidth.value}px`)
  }
  
  onMounted(() => {
    initZoom();
    // Ne pas appliquer de largeur au démarrage
  });
  watch(
    () => route.path,
    () => nextTick(() => initZoom())
  );
</script>

<template>
  <Layout>
    <template #doc-before >
      <Breadcrumb :home="home" :model="items">
          <template #item="{ item }">
            <a class="cursor-pointer" :href="item.link" v-if="items.length > 0">
              <i :class="item.icon" v-if="item.icon"/>
              {{ stripHtml(item.text) }}
            </a>
          </template>
      </Breadcrumb>
    </template>
    
    <template #aside-outline-before>
      <div 
        class="resize-handle" 
        @mousedown="startResize"
        :class="{ 'resizing': isResizing }"
      ></div>
    </template>
  </Layout>
</template>

