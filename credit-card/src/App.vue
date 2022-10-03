<template>
  <div id="app">
    <h1>藍新金流</h1>
    <CreditCard class="mb-5"/>
  </div>
</template>

<script>
import CreditCard from './components/CreditCard.vue'

export default {
  name: 'App',
  components: {
    CreditCard,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
