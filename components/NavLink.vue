<template>
  <li class="base-heading-link text-sm my-1">
    <NuxtLink :to="getPath()" class="flex justify-between items-center px-4 border-r-4 border-white">
      <slot />
      <span>{{ name }}</span>
    </NuxtLink>
  </li>
</template>

<script setup lang="ts">
const { name } = defineProps(["name"]);

function getPath() {
  if (name === "home") return "/";
  else return `/${name}`;
}
</script>
