<script setup>
import TodoApp from "./components/TodoApp.vue";
</script>

<template>
  <header>
    <img
      alt="Vue logo"
      class="logo"
      src="./assets/logo.svg"
      width="125"
      height="125"
    />
    <h1>Vue.js Todo App</h1>
  </header>

  <main>
    <TodoApp />
  </main>
</template>

<style>
@import "./assets/base.css";
@import "./assets/utility.css";
@import "./assets/table.css";

#app {
  max-width: 60rem;
  margin: 0 auto;
  padding: 2rem;
  display: grid;
  font-weight: normal;
}
.logo {
  display: block;
  margin: 0 auto;
}
h1 {
  text-align: center;
}
</style>
