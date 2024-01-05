<template>
  <MainContent title="Projects">
    <ProjectCard v-for="(p, i) in projects" :project="p" :class="{ 'mt-4': i > 0 }" />
  </MainContent>
</template>

<script setup lang="ts">
const projects = [
  {
    description: "PWA for internal workings of specialized gym, Moviemiento Alpha",
    stack: "MongoDB, TypeScript, Node, Nest, Angular, Tailwind",
    ghUrl: "https://github.com/onehoax/alpha ",
    site: ""
  },
  {
    description: "Personal Website (This Site)",
    stack: "Nuxt, Tailwind",
    ghUrl: "https://github.com/onehoax/portfolio",
    site: "https://andresosorio.onrender.com"
  },
  {
    description: "Custom JWT Implementation with asymetric key encryption and some standard options",
    stack: "TypeScript, Node, JWT, Asymetric Key Encryption",
    ghUrl: "https://github.com/onehoax/custom_jwt",
    site: ""
  },
  {
    description: "RESTful API with PostgreSQL and Prisma",
    stack: "Node, Express, TypeScript, PostgreSQL, Prisma",
    ghUrl: "https://github.com/onehoax/rest_api",
    site: ""
  },
  {
    description: "RESTful API with Authentication",
    stack: "Node, Express, TypeScript, Passport, JWT",
    ghUrl: "https://github.com/onehoax/express_recipes",
    site: ""
  },
  {
    description: "Mock Gym Platform",
    stack: "Vue, Materialize, node, firebase",
    ghUrl: "https://github.com/onehoax/gym_platform",
    site: "https://gym-platform-dd807.web.app/"
  },
  {
    description: "Mock E-Commerce UI",
    stack: "Nuxt, Tailwind",
    ghUrl: "https://github.com/onehoax/nuxt_app",
    site: "https://bespoke-belekoy-307f74.netlify.app/"
  },
  {
    description: "Data Engineering Projects",
    stack:
      "Core Java, SpringBoot, Linux, Bash, PostgreSQL, Python, Hadoop, Spark, Docker, Kubernetes, Cloud, OLTP, OLAP",
    ghUrl: "https://github.com/onehoax/data_engineering ",
    site: ""
  },
  {
    description: "Implementation of small java-like language",
    stack: "Visitor Design Pattern, Eiffel Testing Framework (ETF)",
    ghUrl: "https://github.com/onehoax/language_analyzer",
    site: ""
  },
  {
    description: "Mock Portfolio Site",
    stack: "HTML, CSS, JS",
    ghUrl: "https://github.com/onehoax/gallery_portfolio",
    site: "https://andresosorio.netlify.app/"
  },
  {
    description: "Representation of the fx_2500 calculator",
    stack: "HTML, CSS, JS",
    ghUrl: "https://github.com/onehoax/calculator ",
    site: ""
  }
];
</script>
