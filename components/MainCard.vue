<template>
  <div class="main-content h-44 flex justify-center text-center">
    <NuxtLink :to="page">
      <h2 class="content-heading">{{ title }}</h2>
      <p class="mt-4">{{ description }}</p>
      <div class="flex justify-center mt-4">
        <slot />
      </div>
    </NuxtLink>
  </div>
</template>

<script setup lang="ts">
defineProps(["page", "title", "description"]);
</script>
