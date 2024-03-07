<template>
  <MainContent title="Intro">
    <MainCard :page="cards[0].to" :title="cards[0].title" :description="cards[0].description" :is-first="true">
      <IdentificationIcon class="home-page-icon" />
    </MainCard>
    <MainCard
      :page="cards[1].to"
      :title="cards[1].title"
      :description="cards[1].description"
      class="mt-4"
      :is-first="false"
    >
      <BriefcaseIcon class="home-page-icon" />
    </MainCard>
    <MainCard
      :page="cards[2].to"
      :title="cards[2].title"
      :description="cards[2].description"
      class="mt-4"
      :is-first="false"
    >
      <CommandLineIcon class="home-page-icon" />
    </MainCard>
    <MainCard
      :page="cards[4].to"
      :title="cards[4].title"
      :description="cards[4].description"
      class="mt-4"
      :is-first="false"
    >
      <EnvelopeIcon class="home-page-icon" />
    </MainCard>
    <MainCard
      :page="cards[3].to"
      :title="cards[3].title"
      :description="cards[3].description"
      class="mt-4"
      :is-first="false"
    >
      <InformationCircleIcon class="home-page-icon" />
    </MainCard>
  </MainContent>
</template>

<script setup lang="ts">
import {
  InformationCircleIcon,
  IdentificationIcon,
  CommandLineIcon,
  BriefcaseIcon,
  EnvelopeIcon
} from "@heroicons/vue/24/solid";

const cards = [
  {
    to: "/resume",
    title: "Full Stack Engineer",
    description: "Learn more about my professional qualifications"
  },
  {
    to: "/projects",
    title: "Software Projects",
    description: "Check out the projects I am working on"
  },
  {
    to: "/services",
    title: "Development Services",
    description: "Explore the services I provide "
  },
  {
    to: "/about",
    title: "About",
    description: "A Little About Me"
  },
  {
    to: "/contact",
    title: "Contact Information",
    description: "Get in touch"
  }
];
</script>
