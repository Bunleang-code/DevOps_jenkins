<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3';
</script>

<template>
    <Head title="Portfolio" />

    <div class="min-h-screen bg-[#FDFDFC] px-6 py-8 text-[#1b1b18] dark:bg-[#0a0a0a] dark:text-[#EDEDEC] lg:px-12">
        <header class="mx-auto mb-10 max-w-6xl">
            <nav class="flex flex-wrap items-center justify-between gap-3 rounded-3xl border border-[#e3e3e0] bg-white/90 px-6 py-4 text-sm shadow-[0_8px_40px_rgba(15,15,15,0.06)] backdrop-blur dark:border-[#303030] dark:bg-[#161615]/90 lg:px-8 lg:py-5">
                <div class="font-semibold">My Portfolio</div>
                <div class="flex flex-wrap items-center gap-2">
                    <Link href="/" class="rounded-full border border-transparent bg-[#1b1b18] px-4 py-2 text-white hover:bg-[#323232] dark:bg-[#EDEDEC] dark:text-[#1B1B18] dark:hover:bg-[#ffffffdd]">
                        Home
                    </Link>
                    <a href="#contact" class="rounded-full border border-[#e3e3e0] px-4 py-2 text-[#1b1b18] hover:border-[#d2d2d0] dark:border-[#3E3E3A] dark:text-[#EDEDEC] dark:hover:border-[#666]">
                        Contact
                    </a>
                </div>
            </nav>
        </header>

        <main class="mx-auto flex max-w-6xl flex-col gap-10">
            <section class="grid gap-8 rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-8 shadow-[0_24px_80px_rgba(15,15,15,0.08)] dark:border-[#303030] dark:bg-[#161615]/90 lg:grid-cols-[1.2fr_0.8fr] lg:p-12">
                <div class="space-y-6">
                    <div class="space-y-2">
                        <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Full-stack developer</p>
                        <h1 class="text-4xl font-semibold leading-tight tracking-tight text-[#111111] dark:text-white md:text-5xl">
                            Hi, I’m Bunleang. I build modern Laravel apps with Vue and Tailwind.
                        </h1>
                    </div>
                    <p class="max-w-2xl text-base leading-8 text-[#51504b] dark:text-[#C6C6C3]">
                        I create clean, maintainable web experiences using Laravel, Inertia, Vue 3, and Tailwind CSS. Explore the projects below to see how I solve real problems with polished UI and robust backend logic.
                    </p>
                    <div class="flex flex-col gap-3 sm:flex-row">
                        <Link href="#projects" class="inline-flex items-center justify-center rounded-full bg-[#1b1b18] px-6 py-3 text-sm font-medium text-white transition hover:bg-[#2d2d2d]">
                            View projects
                        </Link>
                        <a href="#contact" class="inline-flex items-center justify-center rounded-full border border-[#1b1b18] px-6 py-3 text-sm font-medium text-[#1b1b18] transition hover:bg-[#1b1b18] hover:text-white dark:border-[#EDEDEC] dark:text-[#EDEDEC] dark:hover:bg-[#EDEDEC] dark:hover:text-[#111111]">
                            Let’s connect
                        </a>
                    </div>
                </div>

                <div class="rounded-[2rem] bg-[#F8F2F0] p-8 text-[#1b1b18] shadow-[0_24px_40px_rgba(15,15,15,0.08)] dark:bg-[#1D1B18] dark:text-[#EDEDEC]">
                    <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Highlights</p>
                    <ul class="mt-6 space-y-4 text-sm leading-7">
                        <li class="rounded-3xl bg-white/80 p-4 shadow-sm dark:bg-[#272523]/80">
                            <strong class="block font-semibold">Laravel APIs</strong>
                            Designed REST and Inertia workflows for fast, secure user experiences.
                        </li>
                        <li class="rounded-3xl bg-white/80 p-4 shadow-sm dark:bg-[#272523]/80">
                            <strong class="block font-semibold">Inertia + Vue 3</strong>
                            Built dynamic interface components with reusable Vue patterns.
                        </li>
                        <li class="rounded-3xl bg-white/80 p-4 shadow-sm dark:bg-[#272523]/80">
                            <strong class="block font-semibold">Tailwind UI</strong>
                            Delivered responsive, accessible layouts with modern styling.
                        </li>
                    </ul>
                </div>
            </section>

            <section id="projects" class="grid gap-6 lg:grid-cols-3">
                <article class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-6 shadow-[0_15px_40px_rgba(15,15,15,0.05)] dark:border-[#303030] dark:bg-[#161615]/90">
                    <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Project</p>
                    <h2 class="mt-4 text-2xl font-semibold text-[#111111] dark:text-white">Admin Portal</h2>
                    <p class="mt-4 text-sm leading-7 text-[#51504b] dark:text-[#C6C6C3]">
                        Developed a secure backend admin panel for managing users, roles, and site settings with clean UI controls.
                    </p>
                </article>
                <article class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-6 shadow-[0_15px_40px_rgba(15,15,15,0.05)] dark:border-[#303030] dark:bg-[#161615]/90">
                    <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Project</p>
                    <h2 class="mt-4 text-2xl font-semibold text-[#111111] dark:text-white">Inertia App</h2>
                    <p class="mt-4 text-sm leading-7 text-[#51504b] dark:text-[#C6C6C3]">
                        Built a responsive Vue-based app with Inertia that loads quickly and feels native on desktop and mobile.
                    </p>
                </article>
                <article class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-6 shadow-[0_15px_40px_rgba(15,15,15,0.05)] dark:border-[#303030] dark:bg-[#161615]/90">
                    <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Project</p>
                    <h2 class="mt-4 text-2xl font-semibold text-[#111111] dark:text-white">Design System</h2>
                    <p class="mt-4 text-sm leading-7 text-[#51504b] dark:text-[#C6C6C3]">
                        Created reusable UI components and a consistent theme for faster, safer interface development.
                    </p>
                </article>
            </section>

            <section class="grid gap-6 lg:grid-cols-[1fr_0.8fr]">
                <div class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-8 shadow-[0_24px_80px_rgba(15,15,15,0.08)] dark:border-[#303030] dark:bg-[#161615]/90">
                    <h2 class="text-3xl font-semibold text-[#111111] dark:text-white">Skills & tools</h2>
                    <div class="mt-6 grid gap-3 text-sm leading-7 text-[#51504b] dark:text-[#C6C6C3] sm:grid-cols-2">
                        <div>Laravel, Eloquent, API design</div>
                        <div>Vue 3, Inertia, component architecture</div>
                        <div>Tailwind CSS, responsive design</div>
                        <div>Git, CI/CD, testing, deploy pipelines</div>
                    </div>
                </div>
                <div class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-8 shadow-[0_24px_80px_rgba(15,15,15,0.08)] dark:border-[#303030] dark:bg-[#161615]/90">
                    <h2 class="text-3xl font-semibold text-[#111111] dark:text-white">About me</h2>
                    <p class="mt-6 text-sm leading-7 text-[#51504b] dark:text-[#C6C6C3]">
                        I focus on fast, functional user experiences and resilient backend systems. I enjoy translating product ideas into polished Laravel applications that are easy to maintain and scale.
                    </p>
                </div>
            </section>

            <section id="contact" class="rounded-[2rem] border border-[#e3e3e0] bg-white/90 p-8 shadow-[0_24px_80px_rgba(15,15,15,0.08)] dark:border-[#303030] dark:bg-[#161615]/90">
                <div class="flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
                    <div>
                        <p class="text-sm uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Contact</p>
                        <h2 class="mt-3 text-3xl font-semibold text-[#111111] dark:text-white">Start your next Laravel project.</h2>
                    </div>
                    <a href="mailto:hello@example.com" class="inline-flex items-center justify-center rounded-full bg-[#1b1b18] px-6 py-3 text-sm font-medium text-white transition hover:bg-[#323232]">
                        Email me
                    </a>
                </div>
                <div class="mt-6 grid gap-4 sm:grid-cols-3">
                    <div class="rounded-3xl bg-[#f9f4f2] p-5 dark:bg-[#22201d]">
                        <p class="text-xs uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Email</p>
                        <p class="mt-2 text-sm font-semibold text-[#111111] dark:text-white">hello@example.com</p>
                    </div>
                    <div class="rounded-3xl bg-[#f9f4f2] p-5 dark:bg-[#22201d]">
                        <p class="text-xs uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Location</p>
                        <p class="mt-2 text-sm font-semibold text-[#111111] dark:text-white">Phnom Penh, Cambodia</p>
                    </div>
                    <div class="rounded-3xl bg-[#f9f4f2] p-5 dark:bg-[#22201d]">
                        <p class="text-xs uppercase tracking-[0.35em] text-[#9f9d98] dark:text-[#A1A09A]">Availability</p>
                        <p class="mt-2 text-sm font-semibold text-[#111111] dark:text-white">Open for freelance work</p>
                    </div>
                </div>
            </section>
        </main>
    </div>
</template>
