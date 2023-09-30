<template>
  <main>
    <h1 class="content-title">{{ title }}</h1>
    <div class="main-content-wrapper">
      <slot />
    </div>
  </main>
</template>

<script setup lang="ts">
const { title } = defineProps(["title"]);
</script>
