<template>
  <header>
    <h1 class="font-bold uppercase p-4 border-b border-gray-100 hover:text-stone-700">
      <NuxtLink to="/">Andres Osorio</NuxtLink>
    </h1>
    <nav>
      <ul class="border rounded-md bg-gray-200 shadow-md w-32 text-right p-1">
        <NavLink name="Home">
          <HomeIcon class="base-icon" />
        </NavLink>
        <NavLink name="About">
          <QuestionMarkCircleIcon class="base-icon" />
        </NavLink>
      </ul>
    </nav>
  </header>
  <slot />
</template>

<script setup lang="ts">
import { HomeIcon, QuestionMarkCircleIcon, EnvelopeIcon, Bars3Icon } from "@heroicons/vue/24/outline";

useHead({
  bodyAttrs: {
    class: "text-stone-500"
  }
});
</script>
