<template>
  <MainContent title="Services">
    <div class="main-content">
      <h2 class="content-heading">Progressive Web Apps</h2>
      <p class="mt-4">
        I design and implement Full-Stack Progressive Web App (PWA) solutions. A PWA is basically a website that can
        behave as a mobile application, as well. This eliminates the need to develop separate systems for the same
        product to target different platforms. E.g.: in the past, a website would usually be accompanied by a
        corresponding Android and iOS app, resulting in a total of 3 separate systems, which accomplish the same
        function, just on different platforms. Because a PWA is developed using web technologies, it is platform
        agnostic; therefore you develop a single product that serves both as the website and as the mobile app.
      </p>
      <h2 class="content-heading mt-6">RESTful APIs</h2>
      <p class="mt-4">
        Integrations between different systems are essential for the success of any product; a RESTful API is a bridge
        between different services so they can communicate appropriately.
      </p>
      <h2 class="content-heading mt-6">Web Sites</h2>
      <p class="mt-4">
        A PWA is suitable for products that are meant to work as applications, meaning they are highly functional and
        usually interact with other services (the underlying OS, a database, market data, etc.). An organization doesn't
        always need a PWA, a simple website to showcase their content might suffice.
      </p>
      <h2 class="content-heading mt-6">General Software Development</h2>
      <p class="mt-4">
        TypeScript/JavaScript can be used for virtually anything since it can be used both on the server and client
        side. I specialize in Full-Stack TypeScript development using Node for the back-end and Vue for the front-end.
      </p>
      <div class="text-center">
        <button
          class="p-2 mt-6 uppercase font-semibold bg-stone-200 shadow-md rounded-lg hover:bg-red-400 hover:text-white transition ease-out duration-300"
        >
          <NuxtLink to="/contact"> More Information </NuxtLink>
        </button>
      </div>
    </div>
  </MainContent>
</template>

<script setup lang="ts"></script>
