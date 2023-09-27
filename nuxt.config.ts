// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: ["@nuxtjs/tailwindcss"],
  typescript: {
    strict: true
  },
  app: {
    head: {
      title: "Andres Osorio",
      meta: [{ name: "description", content: "Personal Portfolio" }],
      htmlAttrs: {
        lang: "en"
      },
      link: [{ rel: "icon", type: "image/png", href: "/img/cli8.svg" }]
    }
  }
});
