// a page to get products from hygraph plugin and display in a simple loop


<template>
  <h1>Hello world</h1>
  <div v-for="product in products">
    <h1><NuxtLink :to="`/product/${product.slug}`">{{ product.name }}</NuxtLink></h1>
  </div>

</template>


<script setup>
const { data } = await useFetch('https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master', {
  method: "POST",

  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify({
    query: `query MyQuery {
          products {
            name
            slug
          }
        }`
  }),
})

const products = await data.value.data.products

</script>