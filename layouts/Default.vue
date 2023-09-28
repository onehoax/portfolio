<template>
  <div class="flex flex-col h-screen md:grid md:grid-cols-5">
    <div class="mt-2 md:col-span-1 md:flex md:justify-end">
      <header>
        <div class="flex justify-between items-center">
          <h1 class="base-heading-link text-xl p-4 border-b border-gray-100 truncate">
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
          <ul
            class="border rounded-md bg-white shadow-lg w-36 md:w-32 mt-2 py-2 pr-2 md:border-none md:shadow-none md:pr-0"
          >
            <NavLink name="Home">
              <HomeIcon class="header-icon" />
            </NavLink>
            <NavLink name="About">
              <InformationCircleIcon class="header-icon" />
            </NavLink>
            <NavLink name="Resume">
              <IdentificationIcon class="header-icon" />
            </NavLink>
            <NavLink name="Projects">
              <BriefcaseIcon class="header-icon" />
            </NavLink>
            <NavLink name="Services">
              <CommandLineIcon class="header-icon" />
            </NavLink>
            <NavLink name="Contact">
              <EnvelopeIcon class="header-icon" />
            </NavLink>
          </ul>
        </nav>
      </header>
    </div>
    <div class="relative flex-1 md:col-span-4 bg-gray-100 shadow-inner shadow-stone-400">
      <!-- page content -->
      <slot />
      <!-- page content -->
      <footer class="h-16 absolute bottom-0 w-full bg-stone-200 shadow-xl shadow-black">
        <nav class="flex justify-center items-center mx-4 pt-4">
          <NuxtLink :href="email" class="mx-4">
            <PaperAirplaneIcon class="footer-icon" />
          </NuxtLink>
          <NuxtLink :to="github" target="_blank" class="mx-4">
            <svg
              class="h-9 w-9 fill-current text-stone-500 px-0 hover:text-stone-700"
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
            >
              <path
                d="M9.35 16.88c0 .07-.07.12-.17.12S9 17 9 16.88s.08-.12.17-.12c.09 0 .18.05.18.12Zm-1-.15c0 .07 0 .15.14.17a.15.15 0 0 0 .2-.07c0-.07 0-.14-.14-.17s-.18 0-.2.07Zm1.42-.05c-.09 0-.15.08-.14.16.01.08.09.11.19.09.1-.02.15-.09.14-.16-.01-.07-.09-.1-.19-.09ZM11.9 4A7.83 7.83 0 0 0 4 12.07 8.29 8.29 0 0 0 9.47 20c.41.07.56-.19.56-.4v-2s-2.26.5-2.74-1c0 0-.36-1-.89-1.21 0 0-.74-.52.05-.51a1.67 1.67 0 0 1 1.24.85 1.69 1.69 0 0 0 2.36.69 1.83 1.83 0 0 1 .51-1.11c-1.8-.21-3.62-.47-3.62-3.66A2.54 2.54 0 0 1 7.7 9.7a3.21 3.21 0 0 1 .08-2.24c.68-.22 2.23.89 2.23.89a7.46 7.46 0 0 1 4.05 0s1.55-1.11 2.23-.89a3.14 3.14 0 0 1 .08 2.24 2.61 2.61 0 0 1 .83 1.95c0 3.2-1.9 3.45-3.7 3.66a2 2 0 0 1 .5 1.5v2.77a.42.42 0 0 0 .56.4A8.22 8.22 0 0 0 20 12.07 8 8 0 0 0 11.9 4ZM7.14 15.41v.17a.119.119 0 0 0 .131.026.119.119 0 0 0 .039-.026v-.18c0-.07-.13-.03-.17.01Zm-.35-.27s0 .1.07.13a.09.09 0 0 0 .14 0s0-.1-.07-.13-.12-.03-.14 0Zm1 1.18v.21c0 .07.17.08.21 0 .04-.08 0-.14 0-.21 0-.07-.13-.05-.17 0h-.04Zm-.37-.49v.2c0 .08.14.11.19.08a.16.16 0 0 0 0-.21c-.05-.08-.13-.11-.19-.07Z"
              />
            </svg>
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
  PaperAirplaneIcon,
  Bars3Icon,
  XMarkIcon
} from "@heroicons/vue/24/solid";

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
