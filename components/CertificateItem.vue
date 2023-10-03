<template>
  <div class="mt-4">
    <NuxtLink :to="site" target="_blank">
      {{ name }} - <span class="font-medium">{{ institution }}</span>
    </NuxtLink>
  </div>
</template>

<script setup lang="ts">
defineProps(["site", "name", "institution"]);
</script>
