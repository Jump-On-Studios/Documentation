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
    </div>

    <!-- Results Count -->
    <div class="results-info">
      Showing {{ filteredInteriors.length }} interior{{
        filteredInteriors.length !== 1 ? "s" : ""
      }}
    </div>

    <!-- Gallery Grid -->
    <div class="gallery-grid" v-if="filteredInteriors.length > 0">
      <div
        v-for="interior in filteredInteriors"
        :key="interior.id"
        class="gallery-item"
      >
        <img
          :src="`/images/interiors/${interior.filename}`"
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
            <span class="rooms">
              {{ interior.rooms }} room{{ interior.rooms !== 1 ? "s" : "" }}
            </span>
          </div>
        </div>
      </div>
    </div>

    <!-- Empty State -->
    <div v-else class="empty-state">
      <p>No interiors match the selected filters.</p>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, watch, onMounted } from "vue";

// Interior data from the file
const interiorsData = [
  {
    id: "jo_rad_house_01",
    category: "flat",
    rooms: 4,
    filename: "jo_rad_house_01.jpg",
  },
  {
    id: "jo_new_barber",
    category: "house",
    rooms: 1,
    filename: "jo_new_barber.jpg",
  },
  {
    id: "jo_new_gamble",
    category: "house",
    rooms: 1,
    filename: "jo_new_gamble.jpg",
  },
  {
    id: "jo_ple_house01",
    category: "house",
    rooms: 1,
    filename: "jo_ple_house01.png",
  },
  {
    id: "jo_pro_worker_house",
    category: "house",
    rooms: 1,
    filename: "jo_pro_worker_house.jpg",
  },
  {
    id: "jo_rdl_house_01",
    category: "house",
    rooms: 1,
    filename: "jo_rdl_house_01.jpg",
  },
  {
    id: "jo_rho_genstore",
    category: "house",
    rooms: 1,
    filename: "jo_rho_genstore.jpg",
  },
  {
    id: "jo_shack_sk2",
    category: "house",
    rooms: 1,
    filename: "jo_shack_sk2.jpg",
  },
  {
    id: "jo_sil_house",
    category: "house",
    rooms: 1,
    filename: "jo_sil_house.jpg",
  },
  {
    id: "jo_rho_gunsmith",
    category: "house",
    rooms: 2,
    filename: "jo_rho_gunsmith.jpg",
  },
  {
    id: "jo_shack_rarefish",
    category: "house",
    rooms: 2,
    filename: "jo_shack_rarefish.jpg",
  },
  {
    id: "jo_str_doctor",
    category: "house",
    rooms: 2,
    filename: "jo_str_doctor.jpg",
  },
  {
    id: "jo_str_genst",
    category: "house",
    rooms: 2,
    filename: "jo_str_genst.jpg",
  },
  {
    id: "jo_pai_house",
    category: "house",
    rooms: 3,
    filename: "jo_pai_house.jpg",
  },
  {
    id: "jo_shack_b_b",
    category: "house",
    rooms: 3,
    filename: "jo_shack_b_b.jpg",
  },
  {
    id: "jo_shack_b_c",
    category: "house",
    rooms: 3,
    filename: "jo_shack_b_c.jpg",
  },
  {
    id: "jo_shack_b_a",
    category: "house",
    rooms: 4,
    filename: "jo_shack_b_a.jpg",
  },
  {
    id: "jo_new_man_bronte",
    category: "manor",
    rooms: 10,
    filename: "jo_new_man_bronte.jpg",
  },
  {
    id: "jo_sod_house",
    category: "rock_shack",
    rooms: 1,
    filename: "jo_sod_house.jpg",
  },
  {
    id: "jo_aur_shack01",
    category: "shack",
    rooms: 1,
    filename: "jo_aur_shack01.jpg",
  },
  {
    id: "jo_qua_shack01",
    category: "shack",
    rooms: 1,
    filename: "jo_qua_shack01.png",
  },
  {
    id: "jo_qua_shack02",
    category: "shack",
    rooms: 1,
    filename: "jo_qua_shack02.jpg",
  },
  {
    id: "jo_shack_ai",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_ai.jpg",
  },
  {
    id: "jo_shack_bv",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_bv.jpg",
  },
  {
    id: "jo_shack_dr",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_dr.jpg",
  },
  {
    id: "jo_shack_it_01",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_it_01.jpg",
  },
  {
    id: "jo_shack_it_02",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_it_02.jpg",
  },
  {
    id: "jo_shack_lt",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_lt.jpg",
  },
  {
    id: "jo_shack_pl",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_pl.jpg",
  },
  {
    id: "jo_shack_rc",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_rc.jpg",
  },
  {
    id: "jo_shack_sc",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_sc.jpg",
  },
  {
    id: "jo_shack_sw",
    category: "shack",
    rooms: 1,
    filename: "jo_shack_sw.jpg",
  },
  {
    id: "jo_six_cabin",
    category: "shack",
    rooms: 1,
    filename: "jo_six_cabin.jpg",
  },
  {
    id: "jo_shack_cwb",
    category: "shack",
    rooms: 2,
    filename: "jo_shack_cwb.jpg",
  },
  {
    id: "jo_roc_house",
    category: "shack",
    rooms: 3,
    filename: "jo_roc_house.jpg",
  },
  {
    id: "jo_new_carriagehouse",
    category: "worker",
    rooms: 1,
    filename: "jo_new_carriagehouse.jpg",
  },
  {
    id: "jo_str_whore",
    category: "house",
    rooms: 5,
    filename: "jo_str_whore.jpg",
  },
  {
    id: "jo_swa_depot01",
    category: "worker",
    rooms: 3,
    filename: "jo_swa_depot01.jpg",
  },
  {
    id: "jo_swc_shack01",
    category: "shack",
    rooms: 1,
    filename: "jo_swc_shack01.jpg",
  },
  {
    id: "jo_tan_house",
    category: "shack",
    rooms: 1,
    filename: "jo_tan_house.jpg",
  },
  {
    id: "jo_tax_house",
    category: "house",
    rooms: 3,
    filename: "jo_tax_house.jpg",
  },
  {
    id: "jo_the_ticketoffice",
    category: "house",
    rooms: 1,
    filename: "jo_the_ticketoffice.jpg",
  },
  {
    id: "jo_tum_genstore",
    category: "flat",
    rooms: 1,
    filename: "jo_tum_genstore.jpg",
  },
  {
    id: "jo_tum_gunsmith",
    category: "flat",
    rooms: 1,
    filename: "jo_tum_gunsmith.jpg",
  },
  {
    id: "jo_tum_saloon",
    category: "house",
    rooms: 2,
    filename: "jo_tum_saloon.jpg",
  },
  {
    id: "jo_twi_shack01",
    category: "rock_shack",
    rooms: 3,
    filename: "jo_twi_shack01.jpg",
  },
  {
    id: "jo_val_doctor",
    category: "house",
    rooms: 3,
    filename: "jo_val_doctor.jpg",
  },
  {
    id: "jo_val_res_01_f",
    category: "flat",
    rooms: 1,
    filename: "jo_val_res_01_f.jpg",
  },
];

// Reactive state
const selectedCategory = ref("all");
const selectedRooms = ref("all");

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
  const availableRooms = getRoomCountsForCategory(newCategory);
  if (
    selectedRooms.value !== "all" &&
    !availableRooms.includes(selectedRooms.value)
  ) {
    selectedRooms.value = "all";
  }
});

// Filtered interiors based on selected filters
const filteredInteriors = computed(() => {
  return interiorsData.filter((interior) => {
    const matchesCategory =
      selectedCategory.value === "all" ||
      interior.category === selectedCategory.value;
    const matchesRooms =
      selectedRooms.value === "all" || interior.rooms === selectedRooms.value;
    return matchesCategory && matchesRooms;
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
