<template>
  <div class="flex flex-col h-screen md:grid md:grid-cols-5">
    <div class="mt-2 md:col-span-1 md:flex md:justify-end">
      <header>
        <div class="flex justify-between items-center">
          <h1 class="base-heading-link p-4 border-b border-gray-100 truncate">
            <NuxtLink to="/">Andres Osorio</NuxtLink>
          </h1>
          <button class="z-20 mx-4 md:hidden" @click="toggleOpen()">
            <Bars3Icon v-if="!isOpen" class="menu-icon" />
            <XMarkIcon v-if="isOpen" class="menu-icon" />
          </button>
          <!-- button taking up whole screen so that screen becomes opaque when account settings is open
         tabindex = -1 makes it inaccessible from the keyboard with tab -->
          <button
            v-if="isOpen"
            @click="isOpen = false"
            class="fixed z-10 inset-0 h-full w-full bg-black opacity-25 cursor-default md:hidden"
            tabindex="-1"
          ></button>
        </div>
        <nav
          :class="isOpen ? 'block' : 'hidden'"
          class="absolute z-10 right-5 md:flex md:justify-end md:static md:mt-5 md:mr-2"
        >
          <ul class="border rounded-md bg-white shadow-lg w-32 md:w-28 py-2 pr-2 md:border-none md:shadow-none md:pr-0">
            <NavLink name="home">
              <HomeIcon class="header-icon" />
            </NavLink>
            <NavLink name="about">
              <InformationCircleIcon class="header-icon" />
            </NavLink>
            <NavLink name="resume">
              <IdentificationIcon class="header-icon" />
            </NavLink>
            <NavLink name="projects">
              <BriefcaseIcon class="header-icon" />
            </NavLink>
            <NavLink name="services">
              <CommandLineIcon class="header-icon" />
            </NavLink>
          </ul>
        </nav>
      </header>
    </div>
    <div class="relative flex-1 md:col-span-4 bg-gray-200">
      <!-- page content -->
      <slot />
      <!-- page content -->
      <footer class="h-16 absolute bottom-0 w-full">
        <nav class="flex justify-center items-center border-t border-gray-300 mx-4 pt-4">
          <NuxtLink :href="email" class="mx-4">
            <EnvelopeIcon class="footer-icon" />
          </NuxtLink>
          <NuxtLink :to="github" target="_blank" class="mx-4">
            <img src="/img/gh2.svg" class="h-5" />
          </NuxtLink>
        </nav>
      </footer>
    </div>
  </div>
</template>

<script setup lang="ts">
import {
  HomeIcon,
  InformationCircleIcon,
  IdentificationIcon,
  CommandLineIcon,
  BriefcaseIcon,
  EnvelopeIcon,
  Bars3Icon,
  XMarkIcon
} from "@heroicons/vue/24/outline";

useHead({
  bodyAttrs: {
    class: "text-stone-500 bg-white"
  }
});

const isOpen = ref(false);

const email = "mailto:andres.osoriogr@gmail.com";
const github = "https://github.com/onehoax";

function toggleOpen() {
  isOpen.value = !isOpen.value;
}

function handleEscape(e: KeyboardEvent) {
  if (e.key === "Esc" || e.key === "Escape") isOpen.value = false;
}

onMounted(() => {
  document.addEventListener("keydown", handleEscape);
});

onBeforeUnmount(() => {
  document.removeEventListener("keydown", handleEscape);
});
</script>
