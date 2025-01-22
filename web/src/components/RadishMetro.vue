<script setup lang="ts">
import { $typst } from "@myriaddreamin/typst.ts/dist/esm/contrib/snippet.mjs";

import { initWorkspace } from "@/workspace";
import type { Settings } from "@/types/settings";

const props = defineProps<{
  settings: Settings;
}>();

const document = ref<HTMLElement>();
const compiled = ref("");

onMounted(async () => {
  await initWorkspace();
  await update();
});

watch(props.settings, async () => {
  await update();
});

async function update() {
  const settings = props.settings;
  const inputs = JSON.stringify({
    toggles: settings.toggles,
    date: [settings.date.getFullYear(), settings.date.getMonth() + 1, settings.date.getDate()],
  });
  console.log("compile", settings, inputs);
  const svg = await $typst.svg({
    mainFilePath: "/radish-metro/system-map/main.typ",
    inputs: { settings: inputs },
  });
  compiled.value = svg;
  console.log("compile completed");
  nextTick(() => {
    const svg = document.value?.firstChild as SVGSVGElement;
    if (!svg) return;
    emit("render", svg.width.baseVal.value, svg.height.baseVal.value);
    console.log("render size", svg.width.baseVal.value, svg.height.baseVal.value);
  });
}

const emit = defineEmits<{
  render: [width: number, height: number];
}>();
</script>

<template>
  <div v-html="compiled" ref="document" />
</template>

<style scoped></style>
