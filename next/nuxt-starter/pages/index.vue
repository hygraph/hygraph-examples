<template>
  <div class="container mx-auto text-center">
    <div class="pt-4">
      <logo />
      <h1 class="font-bold text-xl my-4">nuxt-starter</h1>
      <h2 class="text-xl">
        Nuxt starter for GraphCMS
      </h2>
      <div class="flex justify-center -mx-4 my-4">
        <router-link
          v-for="product in products"
          :to="{ name: 'product-slug', params: { slug: product.slug } }"
          :key="product.slug"
        >
          <article class="border rounded-md p-6 mx-2">
            <h1 class="fopnt-bold text-xl">{{ product.name }}</h1>
          </article>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
import Logo from '~/components/Logo.vue'
import axios from 'axios'

export default {
  components: {
    Logo
  },
  async asyncData() {
    const { data } = await axios.post(process.env.GRAPHCMS_ENDPOINT, {
      query: `{ products { name slug } }`
    })
    return { products: data.data.products }
  }
}
</script>

<style>
/* Sample `apply` at-rules with Tailwind CSS
.container {
  @apply min-h-screen flex justify-center items-center text-center mx-auto;
}
*/
</style>
