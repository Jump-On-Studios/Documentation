import DefaultTheme from "vitepress/theme";

import "./custom.scss";
import "@red-asuka/vitepress-plugin-tabs/dist/style.css";
import "primeicons/primeicons.css";

import PrimeVue from "primevue/config";
import Aura from "@primeuix/themes/aura";
import { definePreset } from "@primeuix/themes";

import MyLayout from "./MyLayout.vue";
import { Tab, Tabs } from "vue3-tabs-component";

const modules = import.meta.glob("./components/**/*.vue", { eager: true });
const components = [];

for (const path in modules) {
  const name = path.replace(/^\.\/components\/(.*)\.\w+$/, "$1");
  modules[path].default.name = name;
  components.push(modules[path].default);
}

const MyPreset = definePreset(Aura, {
  semantic: {
    primary: {
      50: "{amber.50}",
      100: "{amber.100}",
      200: "{amber.200}",
      300: "{amber.300}",
      400: "{amber.400}",
      500: "{amber.500}",
      600: "{amber.600}",
      700: "{amber.700}",
      800: "{amber.800}",
      900: "{amber.900}",
      950: "{amber.950}",
    },
  },
});

export default {
  extends: DefaultTheme,
  Layout: MyLayout,
  async enhanceApp({ app }) {
    app.use(PrimeVue, {
      theme: {
        preset: MyPreset,
        options: {
          darkModeSelector: ".dark",
        },
      },
    });
    app.component("Tab", Tab);
    app.component("Tabs", Tabs);
    if (!import.meta.env.SSR) {
      const Breadcrumb = await import("primevue/breadcrumb");
      app.component("Breadcrumb", Breadcrumb.default);
      const Select = await import("primevue/select");
      app.component("Select", Select.default);
    }
    components.forEach((component) => {
      app.component(component.name, component);
    });
  },
};
