<template>
  <h1 class="red">Hello {{ name }}!</h1>
</template>

<script>
export default {
  asyncData(context) {
    console.log(context.params)
    // called every time before loading the component
    // as the name said, it can be async
    // Also, the returned object will be merged with your data object
    return { name: 'World' }
  },
  fetch() {
    // The `fetch` method is used to fill the store before rendering the page
  },
  head() {
    // Set Meta Tags for this Page
  }
  // and more functionality to discover
}
</script>

<style>
.red {
  color: red;
}
</style>
