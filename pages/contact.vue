<template>
  <MainContent title="Contact">
    <div class="main-content truncate lg:w-2/3 lg:mx-auto">
      <NuxtLink href="mailto:andres.osoriogr@gmail.com ">
        <h2 class="content-heading">
          <PaperAirplaneIcon class="h-6 sm:h-7 text-stone-700 inline-block pb-1.5 px-1.5" />
          Email
        </h2>
        <p class="mt-4">andres.osoriogr@gmail.com</p>
      </NuxtLink>
      <h2 class="content-heading mt-6">
        <PhoneIcon class="h-6 sm:h-7 text-stone-700 inline-block pb-1.5 px-2" />
        Phone #
      </h2>
      <p class="mt-4">+57 310 520 2554</p>
      <NuxtLink to="https://github.com/onehoax" target="_blank">
        <h2 class="content-heading mt-6">
          <svg
            class="h-10 sm:h-11 fill-current text-stone-700 inline-block pb-2 pr-1"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24"
          >
            <path
              d="M9.35 16.88c0 .07-.07.12-.17.12S9 17 9 16.88s.08-.12.17-.12c.09 0 .18.05.18.12Zm-1-.15c0 .07 0 .15.14.17a.15.15 0 0 0 .2-.07c0-.07 0-.14-.14-.17s-.18 0-.2.07Zm1.42-.05c-.09 0-.15.08-.14.16.01.08.09.11.19.09.1-.02.15-.09.14-.16-.01-.07-.09-.1-.19-.09ZM11.9 4A7.83 7.83 0 0 0 4 12.07 8.29 8.29 0 0 0 9.47 20c.41.07.56-.19.56-.4v-2s-2.26.5-2.74-1c0 0-.36-1-.89-1.21 0 0-.74-.52.05-.51a1.67 1.67 0 0 1 1.24.85 1.69 1.69 0 0 0 2.36.69 1.83 1.83 0 0 1 .51-1.11c-1.8-.21-3.62-.47-3.62-3.66A2.54 2.54 0 0 1 7.7 9.7a3.21 3.21 0 0 1 .08-2.24c.68-.22 2.23.89 2.23.89a7.46 7.46 0 0 1 4.05 0s1.55-1.11 2.23-.89a3.14 3.14 0 0 1 .08 2.24 2.61 2.61 0 0 1 .83 1.95c0 3.2-1.9 3.45-3.7 3.66a2 2 0 0 1 .5 1.5v2.77a.42.42 0 0 0 .56.4A8.22 8.22 0 0 0 20 12.07 8 8 0 0 0 11.9 4ZM7.14 15.41v.17a.119.119 0 0 0 .131.026.119.119 0 0 0 .039-.026v-.18c0-.07-.13-.03-.17.01Zm-.35-.27s0 .1.07.13a.09.09 0 0 0 .14 0s0-.1-.07-.13-.12-.03-.14 0Zm1 1.18v.21c0 .07.17.08.21 0 .04-.08 0-.14 0-.21 0-.07-.13-.05-.17 0h-.04Zm-.37-.49v.2c0 .08.14.11.19.08a.16.16 0 0 0 0-.21c-.05-.08-.13-.11-.19-.07Z"
            />
          </svg>
          GitHub
        </h2>
        <p class="mt-4">https://github.com/onehoax</p>
      </NuxtLink>
      <NuxtLink to="https://www.linkedin.com/in/candresosorio" target="_blank">
        <h2 class="content-heading mt-7">
          <svg
            class="h-7 sm:h-8 fill-current text-stone-700 inline-block pb-2 px-2"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 32 32"
          >
            <path
              d="M28.778 1.004H3.191a2.185 2.185 0 0 0-2.186 2.159v25.672a2.186 2.186 0 0 0 2.186 2.161h25.612c1.2 0 2.175-.963 2.194-2.159V3.165a2.195 2.195 0 0 0-2.195-2.161h-.029.001zM9.9 26.562H5.446V12.251H9.9zM7.674 10.293a2.579 2.579 0 1 1 2.579-2.58v.004a2.577 2.577 0 0 1-2.577 2.577h-.003zm18.882 16.269h-4.441v-6.959c0-1.66-.034-3.795-2.314-3.795-2.316 0-2.669 1.806-2.669 3.673v7.082h-4.441V12.252h4.266v1.951h.058a4.686 4.686 0 0 1 4.22-2.312h-.009c4.5 0 5.332 2.962 5.332 6.817v7.855z"
            />
          </svg>
          LinkedIn
        </h2>
        <p class="mt-4">https://www.linkedin.com/in/candresosorio</p>
      </NuxtLink>
      <NuxtLink
        to="https://www.google.com/maps/place/Pereira,+Risaralda/@4.8047745,-75.7137615,13z/data=!3m1!4b1!4m6!3m5!1s0x8e388748eb56c1fd:0x95b39410f9f1dfbc!8m2!3d4.8087174!4d-75.690601!16zL20vMDVqX2tk?entry=ttu"
        target="_blank"
      >
        <h2 class="content-heading mt-7">
          <MapPinIcon class="h-7 sm:h-8 text-stone-700 inline-block pb-1.5 px-2" />
          Location
        </h2>
        <p class="mt-4">Pereira, Risaralda, Colombia</p>
      </NuxtLink>
    </div>
  </MainContent>
</template>

<script setup lang="ts">
import { MapPinIcon, PaperAirplaneIcon, PhoneIcon } from "@heroicons/vue/24/solid";
</script>
