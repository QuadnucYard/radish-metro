<script setup lang="ts">
import type { MenuItem } from "primevue/menuitem";

const items = ref<MenuItem[]>([
  {
    label: "Home",
    route: "/",
  },
  {
    label: "Interactive Map",
    route: "/interactive-map",
  },
  {
    label: "Static Map",
    route: "/static-map",
  },
]);
</script>

<template>
  <header>
    <div class="card">
      <Menubar :model="items">
        <template #item="{ item, props, hasSubmenu }">
          <router-link v-if="item.route" v-slot="{ href, navigate }" :to="item.route" custom>
            <a v-ripple :href="href" v-bind="props.action" @click="navigate">
              <span :class="item.icon" />
              <span>{{ item.label }}</span>
            </a>
          </router-link>
          <a v-else v-ripple :href="item.url" :target="item.target" v-bind="props.action">
            <span :class="item.icon" />
            <span>{{ item.label }}</span>
            <span v-if="hasSubmenu" class="pi pi-fw pi-angle-down" />
          </a>
        </template>
      </Menubar>
    </div>
  </header>

  <RouterView style="height: calc(100vh - 60px)" />
</template>

<style scoped></style>
