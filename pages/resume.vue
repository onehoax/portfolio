<template>
  <MainContent title="Resume">
    <div class="main-content">
      <h2 class="content-heading">Summary <ClipboardDocumentListIcon class="content-icon" /></h2>
      <ul class="list-disc pl-5 mt-4">
        <li>Full Stack Engineer: TypeScript, Java, Database Systems, Linux, Software Architecture</li>
        <li>Led development and operations at a betting startup</li>
        <li>
          Led development and operations of a background screening application in the Core Protection Technology unit of a major Canadian Bank
        </li>
        <li>4 years of Software Development experience</li>
        <li>9 years of experience in teaching, behavior modification, and a variety of environments</li>
        <li>Excellent communication skills</li>
        <li>Responsible, organized, disciplined, hard-working, fast learner, and goal-oriented</li>
        <li>Learning Elixir</li>
      </ul>
      <h2 class="content-heading mt-6">Experience <BriefcaseIcon class="content-icon" /></h2>
      <ExperienceItem
        v-for="item in experienceItems"
        :position="item.position"
        :company="item.company"
        :period="item.period"
        :description-items="item.items"
      />
      <h2 class="content-heading mt-6">Education <AcademicCapIcon class="content-icon" /></h2>
      <h3 class="content-subheading mt-4">York University</h3>
      <h4 class="font-medium">Bachelor of Arts - BA, Computer Science</h4>
      <p>Sep 2017 - Dec 2019</p>
      <p>Remained in the top 15% of the Electrical Engineering and Computer Science faculty throughout the whole program.</p>
      <h3 class="content-subheading mt-4">George Brown College</h3>
      <h4 class="font-medium">Ontario College Advanced Diploma with Honours, Behavioral Science Technology</h4>
      <p>Jan 2012 - Dec 2014</p>
      <h2 class="content-heading mt-6">Skills <CommandLineIcon class="content-icon" /></h2>
      <p class="mt-4 content-subheading">
        TypeScript • Java • Git • Docker Products • Database Systems • Linux • Full-Stack Development • Test-Driven Development • Agile Methodologies • Software Architecture
      </p>
    </div>
  </MainContent>
</template>

<script setup lang="ts">
import {
  ClipboardDocumentListIcon,
  BriefcaseIcon,
  AcademicCapIcon,
  CommandLineIcon,
  ClipboardDocumentCheckIcon,
  EllipsisHorizontalCircleIcon
} from "@heroicons/vue/24/solid";

const certs = [
  {
    site: "https://www.educative.io/verify-certificate/qjv3oKCRgNn3lLDLmIqomv8MQNJ7FK",
    name: "Become a VueJS Developer",
    institution: "Educative.io"
  },
  {
    site: "https://www.educative.io/verify-certificate/zmG3AWTnllm0NXgqqCB1mMqVgoAnh7",
    name: "JavaScript in Detail: From Beginner to Advanced",
    institution: "Educative.io"
  },
  {
    site: "https://www.codecademy.com/profiles/OneHoax/certificates/84f728978e434c02a78abaa0baca0d6c",
    name: "Learn Intermediate TypeScript",
    institution: "Codecademy"
  }
];

const experienceItems = [
  {
    position: "Lead Developer",
    company: "Inlaze",
    period: "Nov 2023 - Present",
    items: [
      "Successfully increased code quality, robustness, and scalability by designing and implementing measures to standardize and enhance development processes in this startup",
      "Supervised and coordinated several projects and developers of varying levels",
      "Coordinated with internal and external teams to identify optimal solutions, prioritize projects/tasks, and deliver excellent quality products on time",
      "Successfully migrated a TypeORM/PostgreSQL database to Mongoose/MongoDB ",
      "Participated in agile best practices through daily stand-up meetings, JIRA boards/tickets, and development based on continuous requirement revision",
      "Designed and developed various products using PostgreSQL, TypeORM, MongoDB, Mongoose, Git, Docker, TypeScript, NodeJS, ExpressJS, NestJS, Angular, Jest, PrimeNG, and Tailwind CSS"
    ]
  },
  {
    position: "Full Stack Developer",
    company: "Self-Employed",
    period: "Jul 2022 - Nov 2023",
    items: [
      "Applied agile methodologies to develop solutions based on continuous requirement revision and client feedback",
      "Successfully designed, coordinated, implemented, and delivered excellent quality products on time",
      "Developed Full Stack solutions with PostgreSQL, Prisma ORM, MongoDB, Docker, TypeScript, NodeJS, ExpressJS, NestJS, VueJS, Angular, and Tailwind CSS"
    ]
  },
  {
    position: "Lead Developer",
    company: "CIBC",
    period: "Jan 2021 - Jul 2022",
    items: [
      "Lead Developer/SME for a background screening application in the Core Protection Technology unit",
      "Successfully designed, coordinated, implemented, and delivered solutions to mitigate critical security risks identified in the application on time and with no bugs; led a team of Senior Developers to accomplish this",
      "Coordinated with internal and external teams to prioritize projects/tasks and deliver excellent quality products on time",
      "Participated in agile best practices through daily stand-up meetings, JIRA boards/tickets, and development based on continuous requirement revision",
      "Developed on top of a NICE Actimize product involving work with HTML/CSS, XSL, JavaScript, Java (Maven, Spring Boot, Microservices, JBoss), Oracle DB, NiFi, BASH, Git, Hadoop, and Linux"
    ]
  },
  {
    position: "Data Engineer Associate",
    company: "Jarvis Consulting Group",
    period: "Jun 2020 - Jan 2021",
    items: [
      "Developed Data Engineering projects through continuous participation in scrum events and agile best practices",
      "Implemented projects using Java, Maven, Spring Boot, Bash, Python, RDBMS/SQL, Git, Hadoop, Spark/Scala, Docker, and Kubernetes; performed both integration and unit testing for each project using JUnit and Mockito",
      "Used a Linux environment (CentOS) for development"
    ]
  },
  {
    position: "Teaching & Behavior Modification",
    company: "Various",
    period: "Jan 2009 - Sep 2017",
    items: [
      "Successfully improved lives of clients with autism and other developmental disorders through application of behavior modification techniques",
      "Taught ESL to students of all ages and groups of all sizes"
    ]
  }
];
</script>
