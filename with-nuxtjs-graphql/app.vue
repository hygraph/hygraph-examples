<template>
  <div>
    <h1>Products</h1>
    <pre>{{ data }}</pre>
  </div>
</template>
<script lang="ts" setup>
const { data } = await useAsyncGql('products');
</script>
