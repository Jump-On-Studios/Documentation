import DefaultTheme from "vitepress/theme";

import "./custom.scss";
import "primevue/resources/themes/aura-light-green/theme.css";
import "@red-asuka/vitepress-plugin-tabs/dist/style.css";
import "primeicons/primeicons.css";

import MyLayout from "./MyLayout.vue";
import { Tab, Tabs } from "vue3-tabs-component";

const modules = import.meta.glob("./components/**/*.vue", { eager: true });
const components = [];

for (const path in modules) {
  const name = path.replace(/^\.\/components\/(.*)\.\w+$/, "$1");
  modules[path].default.name = name;
  components.push(modules[path].default);
}

export default {
  extends: DefaultTheme,
  Layout: MyLayout,
  async enhanceApp({ app }) {
    app.component("Tab", Tab);
    app.component("Tabs", Tabs);
    if (!import.meta.env.SSR) {
      const Breadcrumb = await import("primevue/breadcrumb");
      app.component("Breadcrumb", Breadcrumb.default);
    }
    components.forEach((component) => {
      app.component(component.name, component);
    });
  },
};
