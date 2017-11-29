<template>
  <header>
    <h1>GraphCMS Starter blog</h1>
    <nav>
      <router-link exact to="/" class="link">Home</router-link>
      <router-link to="/about" class="link">About</router-link>
    </nav>
  </header>
</template>

<script>
  export default {
    name: 'AppHeader'
  }
</script>

<style scoped>
  header {
    padding: 24px 32px;
    margin-bottom: 32px;
    text-align: center;
  }
  h1 {
    font-weight: 100;
  }
  nav {
    max-width: 650px;
    margin: 0 auto;
  }
  .link {
    font-size: 18px;
    margin-right: 16px;
  }
  .router-link-active {
    font-weight: bold;
    text-decoration: underline;
  }
</style>