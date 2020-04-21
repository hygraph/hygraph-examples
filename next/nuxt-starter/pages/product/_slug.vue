<template>
  <div class="container mx-auto" v-if="product">
    <div>
      <h1 class="font-bold text-xl">{{ product.name }}</h1>
      <p class="text-lg">{{ product.description }}</p>
      <p>
        {{
          new Intl.NumberFormat('de-DE', {
            style: 'currency',
            currency: 'EUR'
          }).format(product.price / 100)
        }}
      </p>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  async asyncData(context) {
    const { data } = await axios.post(process.env.GRAPHCMS_ENDPOINT, {
      query: `query GetProduct($slug: String){ product(where: {slug: $slug}) { name description price } }`,
      variables: { slug: context.params.slug }
    })
    return { product: data.data.product }
  },
  head() {
    return {
      title: this.product.name,
      meta: [
        // hid is used as unique identifier. Do not use `vmid` for it as it will not work
        {
          hid: 'description',
          name: 'description',
          content: this.product.description
        }
      ]
    }
  }
  // and more functionality to discover
}
</script>

<style></style>
