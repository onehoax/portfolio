<template>
  <h3 class="content-subheading mt-4">{{ position }}</h3>
  <h4 class="font-medium">{{ company }}</h4>
  <p>{{ period }}</p>
  <ul class="list-disc pl-5 mt-4">
    <li v-for="item in descriptionItems">{{ item }}</li>
  </ul>
</template>

<script setup lang="ts">
defineProps(["position", "company", "period", "descriptionItems"]);
</script>
