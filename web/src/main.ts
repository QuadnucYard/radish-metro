import "./assets/main.css";
import "virtual:uno.css";

import { createApp } from "vue";
import PrimeVue from "primevue/config";
import Aura from "@primevue/themes/aura";
import App from "./App.vue";
import router from "./router";

import { $typst } from "@myriaddreamin/typst.ts/dist/esm/contrib/snippet.mjs";
import { preloadRemoteFonts } from "@myriaddreamin/typst.ts/dist/esm/options.init.mjs";

const app = createApp(App);

app.use(router);
app.use(PrimeVue, { theme: { preset: Aura } });
app.mount("#app");

$typst.setCompilerInitOptions({
  beforeBuild: [
    preloadRemoteFonts([
      new URL("@/assets/fonts/FangZhengHeiTiJianTi-1.ttf", import.meta.url).href,
      new URL("@/assets/fonts/SourceHanSansCN-Regular.otf", import.meta.url).href,
    ]),
  ],
  getModule: () =>
    "https://cdn.jsdelivr.net/npm/@myriaddreamin/typst-ts-web-compiler/pkg/typst_ts_web_compiler_bg.wasm",
});

$typst.setRendererInitOptions({
  // beforeBuild: [preloadSystemFonts({ byFamily: ["Source Han Sans CN", "FZHei-B01S"] })],
  getModule: () =>
    "https://cdn.jsdelivr.net/npm/@myriaddreamin/typst-ts-renderer/pkg/typst_ts_renderer_bg.wasm",
});
