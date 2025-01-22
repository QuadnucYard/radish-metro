<script setup lang="ts">
import type { Settings } from "@/types/settings";

const modelValue = defineModel<Settings>({ required: true });

const items = reactive([
  {
    name: "disabled",
    label: "Show disabled",
    desc: "Show disabled lines",
  },
  {
    name: "startedOnly",
    label: "Show started only",
    desc: "Show sections where construction has started or completed only",
  },
  {
    name: "openedOnly",
    label: "Show opened only",
    desc: "Show sections open to public only",
  },
  {
    name: "labels",
    label: "Show labels",
    desc: "Show station labels",
  },
  { name: "title", label: "Show title", desc: "???" },
  { name: "legend", label: "Show legend", desc: "???" },
]);
</script>

<template>
  <div>
    <div v-for="item in items" :key="item.name" class="flex items-center gap-2">
      <Checkbox
        v-model="modelValue.toggles[item.name as keyof Settings['toggles']]"
        :input-id="item.name"
        binary
      />
      <label :for="item.name" v-tooltip="item.desc"> {{ item.label }} </label>
    </div>
    <div class="flex items-center gap-2">
      <label for="datepicker" class="font-bold mb-2"> Date </label>
      <DatePicker
        v-model="modelValue.date"
        showIcon
        iconDisplay="input"
        input-id="datepicker"
        date-format="yy-m-d"
        style="width: 12em"
      />
    </div>
  </div>
</template>

<style scoped></style>
