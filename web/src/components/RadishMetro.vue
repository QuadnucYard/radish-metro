<script setup lang="ts">
import { $typst } from "@myriaddreamin/typst.ts/dist/esm/contrib/snippet.mjs";

import { initWorkspace } from "@/workspace";
import type { Settings } from "@/types/settings";

const props = defineProps<{
  settings: Settings;
}>();

const document = ref<HTMLElement>();

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
  await $typst.canvas(document.value!, {
    mainFilePath: "/radish-metro/system-map/main.typ",
    inputs: { settings: inputs },
  });
  console.log("compile completed");
  nextTick(() => {
    const page_ = document.value?.firstChild;
    if (!page_) return;
    const page = page_ as HTMLElement;
    const width = Number.parseFloat(page.style.width.slice(0, -2));
    const height = Number.parseFloat(page.style.height.slice(0, -2));
    console.log("render size", width, height);
    emit("render", width, height);
  });
}

const emit = defineEmits<{
  render: [width: number, height: number];
}>();
</script>

<template>
  <div ref="document" />
</template>

<style scoped></style>
