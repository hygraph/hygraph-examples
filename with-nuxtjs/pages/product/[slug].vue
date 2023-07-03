<template>
  <div class="container mx-auto" v-if="product">
    <div>
      <h1 class="font-bold text-xl">{{ product.name }}</h1>
      <p class="text-lg">{{ product.description }}</p>
      <p>
        {{
          new Intl.NumberFormat('de-DE', {
            style: 'currency',
            currency: 'EUR',
          }).format(product.price / 100)
        }}
      </p>
    </div>
  </div>
</template>

<script setup>
const { params } = useRoute()

const { data } = await useFetch('https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master', {
  method: "POST",

  headers: {
    "Content-Type": "application/json",
  },
  body: JSON.stringify({
    query: `query MyQuery($slug: String!) {
          product(where: {slug: $slug}) {
            name
            slug
            description
            price
          }
        }`,
        variables: {
          slug: params.slug
        }
  }),
})
const json = data
const product = json.value.data.product
</script>
