<script setup lang="ts">
import "@coddicat/vue-pinch-scroll-zoom/style.css";
import PinchScrollZoom, { type PinchScrollZoomExposed } from "@coddicat/vue-pinch-scroll-zoom";
import type MapSettings from "@/components/MapSettings.vue";
import type { Settings } from "@/types/settings";

const settingsVisible = ref(false);
const settingsEl = ref<InstanceType<typeof MapSettings>>();
const containerEl = ref<HTMLElement>();

const settings = reactive<Settings>({
  toggles: {
    disabled: true,
    startedOnly: false,
    openedOnly: false,
    labels: true,
    title: true,
    legend: true,
  },
  date: new Date(),
});

const contentSize = reactive({ width: 400, height: 400 });

const zoomer = ref<PinchScrollZoomExposed>();

function reset(): void {
  zoomer.value?.setData({
    scale: 1,
    originX: 150,
    originY: 200,
    translateX: -100,
    translateY: -50,
  });
}

const onRender = (w: number, h: number) => {
  contentSize.width = w;
  contentSize.height = h;
};
</script>

<template>
  <main class="h-full">
    <div class="fixed bottom-4 right-4 z-10">
      <Button icon="pi pi-cog" @click="settingsVisible = true" />
    </div>

    <Drawer v-model:visible="settingsVisible" position="right" header="Settings" :modal="false">
      <MapSettings v-model="settings" ref="settingsEl" />
    </Drawer>

    <div ref="containerEl" class="w-full h-full">
      <PinchScrollZoom
        ref="zoomer"
        key-actions
        :width="containerEl?.offsetWidth ?? 200"
        :height="1000"
        :content-width="contentSize.width"
        :content-height="contentSize.height"
        :min-scale="0"
      >
        <RadishMetro :settings="settings" @render="onRender" />
      </PinchScrollZoom>
    </div>
  </main>
</template>

<style></style>
