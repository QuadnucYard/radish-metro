import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "home",
      component: () => import("@/views/HomeView.vue"),
    },
    {
      path: "/interactive-map",
      name: "interactive-map",
      component: () => import("@/views/InteractiveMap.vue"),
    },
    {
      path: "/static-map",
      name: "static-map",
      component: () => import("@/views/StaticMap.vue"),
    },
  ],
});

export default router;
