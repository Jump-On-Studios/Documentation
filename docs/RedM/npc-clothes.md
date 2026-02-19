<script setup>
import { ref, onMounted } from "vue";
import Chart from 'primevue/chart';
const variationChartData = ref();
const modelChartData = ref();
const chartOptions = ref();

const totalMaleVariations = ref();
const totalFemaleVariations = ref();
const totalVariations = ref();
const totalMaleModels = ref();
const totalFemaleModels = ref();
const totalModels = ref();

onMounted(async () => {
    const res = await fetch('/data/charts/npc_category_no_mp.json');
    const variations = await res.json();

    const res2 = await fetch('/data/charts/npc_clothes_no_mp_model.json');
    const models = await res2.json();

    const variationMale = variations.datasets.find(d => d.label === 'male');
    const variationFemale = variations.datasets.find(d => d.label === 'female');
    const modelMale = models.datasets.find(d => d.label === 'male');
    const modelFemale = models.datasets.find(d => d.label === 'female');

    totalMaleVariations.value = variationMale.data.reduce((a, b) => a + b, 0)
    totalFemaleVariations.value = variationFemale.data.reduce((a, b) => a + b, 0)
    totalVariations.value = totalMaleVariations.value + totalFemaleVariations.value

    totalMaleModels.value = modelMale.data.reduce((a, b) => a + b, 0)
    totalFemaleModels.value = modelFemale.data.reduce((a, b) => a + b, 0)
    totalModels.value = totalMaleModels.value + totalFemaleModels.value

    const sortDesc = (labels, maleData, femaleData) => {
        const indices = labels.map((_, i) => i);
        indices.sort((a, b) => (maleData[b] + femaleData[b]) - (maleData[a] + femaleData[a]));
        return {
            labels: indices.map(i => labels[i]),
            male: indices.map(i => maleData[i]),
            female: indices.map(i => femaleData[i]),
        };
    };

    const sortedVariations = sortDesc(variations.labels, variationMale.data, variationFemale.data);
    variationChartData.value = {
        labels: sortedVariations.labels,
        datasets: [
            {
                label: 'Male',
                data: sortedVariations.male,
            },
            {
                label: 'Female',
                data: sortedVariations.female,
            },
        ]
    };
    const sortedModels = sortDesc(models.labels, modelMale.data, modelFemale.data);
    modelChartData.value = {
        labels: sortedModels.labels,
        datasets: [
            {
                label: 'Male',
                data: sortedModels.male,
            },
            {
                label: 'Female',
                data: sortedModels.female,
            },
        ]
    };
    chartOptions.value = setChartOptions();
});

const setChartOptions = () => {
    const documentStyle = getComputedStyle(document.documentElement);
    const textColor = documentStyle.getPropertyValue('--vp-c-text-1');
    const textColorSecondary = documentStyle.getPropertyValue('--vp-c-text-2');
    const surfaceBorder = documentStyle.getPropertyValue('--vp-c-border-1');

    return {
        indexAxis: 'y',
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: true,
                position: 'top',
                labels: {
                    color: textColor
                }
            }
        },
        scales: {
            x: {
                position: 'top',
                ticks: {
                    color: textColorSecondary
                },
                grid: {
                    color: surfaceBorder
                }
            },
            y: {
                beginAtZero: true,
                ticks: {
                    color: textColorSecondary
                },
            }
        }
    };
}
</script>

# :necktie: NPC Clothes
Documentation relating to the **jo_clothingstore_npc** add-on for [Clothing store script](clothing-store).

:::: tabs
::: tab BUY
[Buy the add-on](https://jumpon-studios.com/redm/npc-clothes)
:::

::: tab PREVIEW
Coming soon...
:::
::::

## 1. Installation
::: warning
[Clothing store script](clothing-store) is required to use this add-on
:::

To install jo_clothingstore_npc:
- Drag and drop the resource into your resources folder
  - jo_clothingstore_npc 
- Add this ensure in your server.cfg after `ensure jo_clothingstore`
  - `ensure jo_clothingstore_npc`

Congratulation, the **NPC Clothes** add-on is ready to be used!

## 2. Usage

The scripts add a new intermediate menu in the store which allow you to choose between `Classic Clothes` or `NPC Clothes`. NPC clothing categories share some categories with classic clothes, but there are also many new categories.

## 3. Number of clothes

The add-on adds {{ Intl.NumberFormat().format(totalModels) }} unique clothes ({{ Intl.NumberFormat().format(totalVariations) }} variations):
* {{ Intl.NumberFormat().format(totalMaleModels) }} unique clothes for male ({{ Intl.NumberFormat().format(totalMaleVariations) }} variations)
* {{ Intl.NumberFormat().format(totalFemaleModels) }} unique clothes for female ({{ Intl.NumberFormat().format(totalFemaleVariations) }} variations)

Here are charts of the number of clothes by categories:
:::details Unique clothes by categories ({{ Intl.NumberFormat().format(totalModels) }})
<Chart type="bar" :data="modelChartData" :options="chartOptions" style="height: 100rem" />
:::
:::details All colors variations by categories ({{ Intl.NumberFormat().format(totalVariations) }})
<Chart type="bar" :data="variationChartData" :options="chartOptions" style="height: 100rem" />
:::

## 4. Configuration

<ScriptConfig scriptPath="redm/npc-clothes" />

### Language Configuration

The script supports full translation through the language system. To override any text:

1. Find the key you want to change in `config/_default.lock/lang.lua`
2. Copy `lang.lua` to `config/custom/` and add only the keys you want to override

Example:

```lua
Lang.npcCategoryName = "Одежда NPC"
Lang.bodyPartsMenuTitle = "Исправить части телa"
Lang.upperBody = "Верхняя часть тела"
```

Available translation categories include:
- General UI & Common Terms
- NPC clothes categories names


:::tip 💡Only change the key you need to translate
You only need to include the specific keys you want to change in `config/custom/lang.lua`. Don't copy the entire language file if you don't need to.
:::
