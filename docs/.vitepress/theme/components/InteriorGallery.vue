<template>
  <div class="interior-gallery">
    <!-- Filters Section -->
    <div class="filters">
      <div class="filter-group">
        <label for="category-filter">Category:</label>
        <select id="category-filter" v-model="selectedCategory" class="filter-select">
          <option v-for="option in categoryOptions" :key="option.value" :value="option.value">
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="room-filter">Rooms:</label>
        <select id="room-filter" v-model="selectedRooms" class="filter-select">
          <option v-for="option in availableRoomOptions" :key="option.value" :value="option.value">
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="addon-filter">Addon:</label>
        <select id="addon-filter" v-model="selectedAddon" class="filter-select">
          <option v-for="option in addonOptions" :key="option.value" :value="option.value">
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="show-gallery">
          <input id="show-gallery" v-model="showGallery" type="checkbox" class="gallery-checkbox" />
          Show gallery
        </label>
      </div>
    </div>

    <!-- Results Count -->
    <div v-if="showGallery" class="results-info">
      Showing {{ filteredInteriors.length }} interior{{
        filteredInteriors.length !== 1 ? "s" : ""
      }}
    </div>

    <!-- Gallery Grid -->
    <div v-if="showGallery && filteredInteriors.length > 0" class="gallery-grid">
      <div v-for="interior in filteredInteriors" :key="interior.id" class="gallery-item">
        <img :src="`/images/interiors/${interior.id}.webp`" :alt="interior.id" class="data-zoomable preview" data-zoomable loading="lazy" />
        <div class="interior-info">
          <h4>{{ interior.id }}</h4>
          <div class="interior-meta">
            <span class="category">
              {{ formatCategory(interior.category) }}
            </span>
            <span v-if="interior.addon !== 'main'" class="addon-badge" :class="`addon-${interior.addon}`">
              {{ addonMapping[interior.addon] }}
            </span>
            <span class="rooms">
              {{ interior.rooms }} room{{ interior.rooms !== 1 ? "s" : "" }}
            </span>
            <div class="spacer"></div>
          </div>
        </div>
      </div>
    </div>

    <!-- Empty State -->
    <div v-else-if="showGallery" class="empty-state">
      <p>No interiors match the selected filters.</p>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, watch, onMounted } from "vue";

// Interior data from the file
const interiorsData = [
  {
    id: "jo_tum_genstore",
    addon: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_tum_gunsmith",
    addon: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_val_res_01_f",
    addon: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_val_res_a",
    addon: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_mac_house01",
    addon: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_rad_house_01",
    addon: "main",
    category: "flat",
    rooms: 4,
  },
  {
    id: "jo_new_barber",
    addon: "main",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_rho_genstore",
    addon: "main",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_dow_house",
    addon: "main",
    category: "flat",
    rooms: 2,
  },
  {
    id: "jo_new_gamble",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ple_house01",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_pro_worker_house",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_rdl_house_01",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_shack_sk2",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_sil_house",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_the_ticketoffice",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_adl_cabin01",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ben_shack",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_bpl_swampcabin",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_brb_dockhouse",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_van_farmhouse01",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ven_shack01",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ldj_shack01",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_maco_shack01",
    addon: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_man_cabin01",
    addon: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_rho_gunsmith",
    addon: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_shack_rarefish",
    addon: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_str_doctor",
    addon: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_str_genst",
    addon: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_tum_saloon",
    addon: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_van_saloon",
    addon: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_din_house",
    addon: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_lnn_lonnie_shack",
    addon: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_mfr_cottage01",
    addon: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_pai_house",
    addon: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_b",
    addon: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_c",
    addon: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_tax_house",
    addon: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_val_doctor",
    addon: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_car_house",
    addon: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_dai_farmhouse01",
    addon: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_a",
    addon: "main",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_che_cabin1",
    addon: "more_interiors",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_cro_house",
    addon: "more_interiors",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_han_house",
    addon: "main",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_str_whore",
    addon: "more_interiors",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_abe_farmhouse",
    addon: "main",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_cat_house_01",
    addon: "more_interiors",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_bee_house",
    addon: "more_interiors",
    category: "house",
    rooms: 6,
  },
  {
    id: "jo_new_man_bronte",
    addon: "main",
    category: "manor",
    rooms: 10,
  },
  {
    id: "jo_bra_mansion",
    addon: "more_interiors",
    category: "manor",
    rooms: 12,
  },
  {
    id: "jo_new_man_gala",
    addon: "more_interiors",
    category: "manor",
    rooms: 12,
  },
  {
    id: "jo_sod_house",
    addon: "main",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_agu_hut01",
    addon: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_bur_calaboose",
    addon: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_lar_house",
    addon: "main",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_mic_hideout",
    addon: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_twi_shack01",
    addon: "main",
    category: "rock_shack",
    rooms: 3,
  },
  {
    id: "jo_aur_shack01",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_qua_shack01",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_qua_shack02",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_ai",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_bv",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_dr",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_it_01",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_it_02",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_lt",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_pl",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_rc",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_sc",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_sw",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_six_cabin",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_swc_shack01",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_tan_house",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_but_shack",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_cat_shack01",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_che_shack1",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_col_bunkhouse",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_grh_house",
    addon: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_gri_g2_shack",
    addon: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_cwb",
    addon: "main",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_vet_house",
    addon: "main",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_eme_genstore",
    addon: "more_interiors",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_roc_house",
    addon: "main",
    category: "shack",
    rooms: 3,
  },
  {
    id: "jo_wat_cabin",
    addon: "more_interiors",
    category: "shack",
    rooms: 3,
  },
  {
    id: "jo_new_carriagehouse",
    addon: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_cal_tobacco",
    addon: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_cin_tor",
    addon: "more_interiors",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_van_fenceshop",
    addon: "more_interiors",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_mfr_blacksmith01",
    addon: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_agu_boiler",
    addon: "main",
    category: "worker",
    rooms: 2,
  },
  {
    id: "jo_bra_cornmill",
    addon: "more_interiors",
    category: "worker",
    rooms: 2,
  },
  {
    id: "jo_swa_depot01",
    addon: "main",
    category: "worker",
    rooms: 3,
  },
  {
    id: "jo_dov_lab",
    addon: "more_interiors",
    category: "worker",
    rooms: 3,
  },
  {
    id: "jo_mp006_moonshine01",
    addon: "more_interiors",
    category: "worker",
    rooms: 5,
  },
];

// Addon mapping for human-readable names
const addonMapping = {
  main: "Main",
  more_interiors: "Addon : More Interiors",
};

// Reactive state
const selectedCategory = ref("all");
const selectedRooms = ref("all");
const selectedAddon = ref("all");
const showGallery = ref(true);

// Category options
const categoryOptions = [
  { label: "All Categories", value: "all" },
  { label: "Flat", value: "flat" },
  { label: "House", value: "house" },
  { label: "Manor", value: "manor" },
  { label: "Rock Shack", value: "rock_shack" },
  { label: "Shack", value: "shack" },
  { label: "Worker", value: "worker" },
];

// Addon options
const addonOptions = [
  { label: "All Addons", value: "all" },
  { label: "Main", value: "main" },
  { label: "Addon : More Interiors", value: "more_interiors" },
];

// Get unique room counts for a specific category
const getRoomCountsForCategory = (category) => {
  if (category === "all") {
    return [...new Set(interiorsData.map((i) => i.rooms))].sort(
      (a, b) => a - b
    );
  }
  return [
    ...new Set(
      interiorsData.filter((i) => i.category === category).map((i) => i.rooms)
    ),
  ].sort((a, b) => a - b);
};

// Computed available room options based on selected category
const availableRoomOptions = computed(() => {
  const roomCounts = getRoomCountsForCategory(selectedCategory.value);
  return [
    { label: "All Rooms", value: "all" },
    ...roomCounts.map((count) => ({
      label: `${count} room${count !== 1 ? "s" : ""}`,
      value: count,
    })),
  ];
});

// Watch for category changes and reset room filter if needed
watch(selectedCategory, (newCategory) => {
  showGallery.value = true;
  const availableRooms = getRoomCountsForCategory(newCategory);
  if (
    selectedRooms.value !== "all" &&
    !availableRooms.includes(selectedRooms.value)
  ) {
    selectedRooms.value = "all";
  }
});

// Watch for room filter changes to show gallery
watch(selectedRooms, () => {
  showGallery.value = true;
});

// Watch for addon filter changes to show gallery
watch(selectedAddon, () => {
  showGallery.value = true;
});

// Filtered interiors based on selected filters
const filteredInteriors = computed(() => {
  return interiorsData.filter((interior) => {
    const matchesCategory =
      selectedCategory.value === "all" ||
      interior.category === selectedCategory.value;
    const matchesRooms =
      selectedRooms.value === "all" || interior.rooms === selectedRooms.value;
    const matchesAddon =
      selectedAddon.value === "all" || interior.addon === selectedAddon.value;
    return matchesCategory && matchesRooms && matchesAddon;
  });
});

// Format category name for display
const formatCategory = (category) => {
  return category
    .split("_")
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join(" ");
};

// Initialize medium-zoom and handle URL parameters on mount
onMounted(() => {
  if (typeof window !== "undefined") {
    // Handle URL parameters
    const urlParams = new URLSearchParams(window.location.search);
    const addonParam = urlParams.get("addon");

    if (
      addonParam &&
      (addonParam === "main" || addonParam === "more_interiors")
    ) {
      selectedAddon.value = addonParam;
      showGallery.value = true;

      // Scroll to hash fragment after a delay if present in URL
      if (window.location.hash) {
        setTimeout(() => {
          const elementId = window.location.hash.substring(1); // Remove # prefix
          const targetElement = document.getElementById(elementId);
          if (targetElement) {
            targetElement.scrollIntoView({ behavior: "smooth" });
          }
        }, 100);
      }
    }

    // Initialize medium-zoom
    import("medium-zoom").then(({ default: mediumZoom }) => {
      mediumZoom(".data-zoomable", {
        background: "rgba(0, 0, 0, 0.8)",
      });
    });
  }
});
</script>

<style scoped>
.interior-gallery {
  margin: 2rem 0;
}

.filters {
  display: flex;
  gap: 2rem;
  margin-bottom: 1.5rem;
  flex-wrap: wrap;
  align-items: end;
}

.filter-group {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
  min-width: 200px;
}

.filter-group label {
  font-weight: 600;
  font-size: 0.9rem;
  color: var(--vp-c-text-1);
}

.filter-select {
  width: 100%;
  padding: 0.75rem 1rem;
  border: 1px solid var(--vp-c-border);
  border-radius: 6px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-1);
  font-size: 0.9rem;
  font-family: inherit;
  transition: all 0.2s ease;
  appearance: none;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6,9 12,15 18,9'%3e%3c/polyline%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right 0.75rem center;
  background-size: 1em;
  padding-right: 2.5rem;
}

.filter-select:hover {
  border-color: var(--vp-c-brand);
  background-color: var(--vp-c-bg-soft);
}

.filter-select:focus {
  outline: none;
  border-color: var(--vp-c-brand);
  box-shadow: 0 0 0 3px var(--vp-c-brand-soft);
}

.filter-select:disabled {
  opacity: 0.6;
  cursor: not-allowed;
}

.gallery-checkbox {
  margin-right: 0.5rem;
  accent-color: var(--vp-c-brand);
}

.filter-group label[for="show-gallery"] {
  display: flex;
  align-items: center;
  cursor: pointer;
  font-weight: 600;
  font-size: 0.9rem;
  color: var(--vp-c-text-1);
}

.results-info {
  margin-bottom: 1.5rem;
  color: var(--vp-c-text-2);
  font-size: 0.9rem;
}

.gallery-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  max-width: 1200px;
}

@media (min-width: 768px) {
  .gallery-grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

.gallery-item {
  background: var(--vp-c-bg-soft);
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
  border: 1px solid var(--vp-c-border);
}

.gallery-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
}

.gallery-item img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  cursor: zoom-in;
  transition: opacity 0.2s ease;
}

.gallery-item img:hover {
  opacity: 0.9;
}

.interior-info {
  padding: 1rem;
}

.interior-info h4 {
  margin: 0 0 0.5rem 0;
  font-size: 1rem;
  font-weight: 600;
  color: var(--vp-c-text-1);
}

.interior-meta {
  display: flex;
  gap: 1rem;
  font-size: 0.85rem;
}

.spacer {
  flex: 1;
}

.category {
  background: var(--vp-c-brand);
  color: white;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-weight: 500;
}

.rooms {
  color: var(--vp-c-text-2);
  font-weight: 500;
  line-height: 2.3;
}

.addon-badge {
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-weight: 500;
  font-size: 0.8rem;
  color: white;
}

.addon-main {
  background: var(--vp-c-brand);
}

.addon-more_interiors {
  background: #e16308;
}

.empty-state {
  text-align: center;
  padding: 3rem;
  color: var(--vp-c-text-2);
}

.empty-state p {
  font-size: 1.1rem;
  margin: 0;
}

/* Mobile responsiveness */
@media (max-width: 768px) {
  .filters {
    flex-direction: column;
    gap: 1rem;
  }

  .filter-group {
    min-width: auto;
  }

  .gallery-grid {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }
}
</style>
