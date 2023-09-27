<template>
  <li class="font-bold uppercase text-sm my-1 hover:text-stone-700">
    <NuxtLink :to="getPath()" class="flex justify-between items-end px-4 border-r-4 border-white">
      <slot />
      <span>{{ name }}</span>
    </NuxtLink>
  </li>
</template>

<script setup lang="ts">
const { name } = defineProps(["name"]);

function getPath() {
  const lowerName = name.toLowerCase();
  if (lowerName === "home") return "/";
  else return `/${lowerName}`;
}
</script>
