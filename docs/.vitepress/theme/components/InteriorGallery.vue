<template>
  <div class="interior-gallery">
    <!-- Filters Section -->
    <div class="filters">
      <div class="filter-group">
        <label for="category-filter">Category:</label>
        <select
          id="category-filter"
          v-model="selectedCategory"
          class="filter-select"
        >
          <option
            v-for="option in categoryOptions"
            :key="option.value"
            :value="option.value"
          >
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="room-filter">Rooms:</label>
        <select id="room-filter" v-model="selectedRooms" class="filter-select">
          <option
            v-for="option in availableRoomOptions"
            :key="option.value"
            :value="option.value"
          >
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="pack-filter">Pack:</label>
        <select id="pack-filter" v-model="selectedPack" class="filter-select">
          <option
            v-for="option in packOptions"
            :key="option.value"
            :value="option.value"
          >
            {{ option.label }}
          </option>
        </select>
      </div>

      <div class="filter-group">
        <label for="show-gallery">
          <input
            id="show-gallery"
            v-model="showGallery"
            type="checkbox"
            class="gallery-checkbox"
          />
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
    <div
      v-if="showGallery && filteredInteriors.length > 0"
      class="gallery-grid"
    >
      <div
        v-for="interior in filteredInteriors"
        :key="interior.id"
        class="gallery-item"
      >
        <img
          :src="`/images/interiors/${interior.id}.webp`"
          :alt="interior.id"
          class="data-zoomable preview"
          data-zoomable
        />
        <div class="interior-info">
          <h4>{{ interior.id }}</h4>
          <div class="interior-meta">
            <span class="category">
              {{ formatCategory(interior.category) }}
            </span>
            <span
              v-if="interior.pack !== 'main'"
              class="pack-badge"
              :class="`pack-${interior.pack}`"
            >
              {{ packMapping[interior.pack] }}
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
    pack: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_tum_gunsmith",
    pack: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_val_res_01_f",
    pack: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_val_res_a",
    pack: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_mac_house01",
    pack: "more_interiors",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_rad_house_01",
    pack: "main",
    category: "flat",
    rooms: 4,
  },
  {
    id: "jo_new_barber",
    pack: "main",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_rho_genstore",
    pack: "main",
    category: "flat",
    rooms: 1,
  },
  {
    id: "jo_dow_house",
    pack: "main",
    category: "flat",
    rooms: 2,
  },
  {
    id: "jo_new_gamble",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ple_house01",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_pro_worker_house",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_rdl_house_01",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_shack_sk2",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_sil_house",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_the_ticketoffice",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_adl_cabin01",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ben_shack",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_bpl_swampcabin",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_brb_dockhouse",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_van_farmhouse01",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ven_shack01",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_ldj_shack01",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_maco_shack01",
    pack: "more_interiors",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_man_cabin01",
    pack: "main",
    category: "house",
    rooms: 1,
  },
  {
    id: "jo_rho_gunsmith",
    pack: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_shack_rarefish",
    pack: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_str_doctor",
    pack: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_str_genst",
    pack: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_tum_saloon",
    pack: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_van_saloon",
    pack: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_din_house",
    pack: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_lnn_lonnie_shack",
    pack: "more_interiors",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_mfr_cottage01",
    pack: "main",
    category: "house",
    rooms: 2,
  },
  {
    id: "jo_pai_house",
    pack: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_b",
    pack: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_c",
    pack: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_tax_house",
    pack: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_val_doctor",
    pack: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_car_house",
    pack: "main",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_dai_farmhouse01",
    pack: "more_interiors",
    category: "house",
    rooms: 3,
  },
  {
    id: "jo_shack_b_a",
    pack: "main",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_che_cabin1",
    pack: "more_interiors",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_cro_house",
    pack: "more_interiors",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_han_house",
    pack: "main",
    category: "house",
    rooms: 4,
  },
  {
    id: "jo_str_whore",
    pack: "more_interiors",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_abe_farmhouse",
    pack: "main",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_cat_house_01",
    pack: "more_interiors",
    category: "house",
    rooms: 5,
  },
  {
    id: "jo_bee_house",
    pack: "more_interiors",
    category: "house",
    rooms: 6,
  },
  {
    id: "jo_new_man_bronte",
    pack: "main",
    category: "manor",
    rooms: 10,
  },
  {
    id: "jo_bra_mansion",
    pack: "more_interiors",
    category: "manor",
    rooms: 12,
  },
  {
    id: "jo_new_man_gala",
    pack: "more_interiors",
    category: "manor",
    rooms: 12,
  },
  {
    id: "jo_sod_house",
    pack: "main",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_agu_hut01",
    pack: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_bur_calaboose",
    pack: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_lar_house",
    pack: "main",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_mic_hideout",
    pack: "more_interiors",
    category: "rock_shack",
    rooms: 1,
  },
  {
    id: "jo_twi_shack01",
    pack: "main",
    category: "rock_shack",
    rooms: 3,
  },
  {
    id: "jo_aur_shack01",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_qua_shack01",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_qua_shack02",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_ai",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_bv",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_dr",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_it_01",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_it_02",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_lt",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_pl",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_rc",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_sc",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_sw",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_six_cabin",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_swc_shack01",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_tan_house",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_but_shack",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_cat_shack01",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_che_shack1",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_col_bunkhouse",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_grh_house",
    pack: "more_interiors",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_gri_g2_shack",
    pack: "main",
    category: "shack",
    rooms: 1,
  },
  {
    id: "jo_shack_cwb",
    pack: "main",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_vet_house",
    pack: "main",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_eme_genstore",
    pack: "more_interiors",
    category: "shack",
    rooms: 2,
  },
  {
    id: "jo_roc_house",
    pack: "main",
    category: "shack",
    rooms: 3,
  },
  {
    id: "jo_wat_cabin",
    pack: "more_interiors",
    category: "shack",
    rooms: 3,
  },
  {
    id: "jo_new_carriagehouse",
    pack: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_cal_tobacco",
    pack: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_cin_tor",
    pack: "more_interiors",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_van_fenceshop",
    pack: "more_interiors",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_mfr_blacksmith01",
    pack: "main",
    category: "worker",
    rooms: 1,
  },
  {
    id: "jo_agu_boiler",
    pack: "main",
    category: "worker",
    rooms: 2,
  },
  {
    id: "jo_bra_cornmill",
    pack: "more_interiors",
    category: "worker",
    rooms: 2,
  },
  {
    id: "jo_swa_depot01",
    pack: "main",
    category: "worker",
    rooms: 3,
  },
  {
    id: "jo_dov_lab",
    pack: "more_interiors",
    category: "worker",
    rooms: 3,
  },
  {
    id: "jo_mp006_moonshine01",
    pack: "more_interiors",
    category: "worker",
    rooms: 5,
  },
];

// Pack mapping for human-readable names
const packMapping = {
  main: "Main",
  more_interiors: "DLC : More Interiors",
};

// Reactive state
const selectedCategory = ref("all");
const selectedRooms = ref("all");
const selectedPack = ref("all");
const showGallery = ref(false);

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

// Pack options
const packOptions = [
  { label: "All Packs", value: "all" },
  { label: "Main", value: "main" },
  { label: "DLC : More Interiors", value: "more_interiors" },
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

// Watch for pack filter changes to show gallery
watch(selectedPack, () => {
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
    const matchesPack =
      selectedPack.value === "all" || interior.pack === selectedPack.value;
    return matchesCategory && matchesRooms && matchesPack;
  });
});

// Format category name for display
const formatCategory = (category) => {
  return category
    .split("_")
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join(" ");
};

// Initialize medium-zoom on mount
onMounted(() => {
  if (typeof window !== "undefined") {
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

.pack-badge {
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-weight: 500;
  font-size: 0.8rem;
  color: white;
}

.pack-main {
  background: var(--vp-c-brand);
}

.pack-more_interiors {
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
