<template>
  <NuxtLink :to="page">
    <div
      class="main-content h-48 sm:h-44 flex flex-col justify-center text-center overflow-auto lg:w-2/3 lg:mx-auto"
      :class="{ 'mt-4': !isFirst }"
    >
      <h2 class="content-heading">{{ title }}</h2>
      <p class="mt-4">{{ description }}</p>
      <div class="flex justify-center mt-4">
        <slot />
      </div>
    </div>
  </NuxtLink>
</template>

<script setup lang="ts">
defineProps(["page", "title", "description", "isFirst"]);
</script>
