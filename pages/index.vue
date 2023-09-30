<template>
  <MainContent title="Software Developer">
    <div class="lg:grid grid-cols-2 gap-5">
      <MainCard
        v-for="(card, i) in cards"
        :page="card.to"
        :title="card.title"
        :description="card.description"
        class="lg:mt-0"
        :class="{ 'mt-4': i > 0 }"
      >
        <IdentificationIcon class="home-page-icon" />
      </MainCard>
    </div>
  </MainContent>
</template>

<script setup lang="ts">
import {
  InformationCircleIcon,
  IdentificationIcon,
  CommandLineIcon,
  BriefcaseIcon,
  EnvelopeIcon,
  PaperAirplaneIcon,
  Bars3Icon,
  XMarkIcon
} from "@heroicons/vue/24/solid";

const cards = [
  {
    to: "/resume",
    title: "Full-Stack TypeScript Developer",
    description: "Learn more about my professional qualifications"
  },
  {
    to: "/about",
    title: "Avid Learner of ",
    description: "Learn more about my professional qualifications"
  }
];
</script>
