<template>
  <div class="container">
    <div>
      <logo />
      <h1 class="title">nuxt-starter</h1>
      <h2 class="subtitle">
        Nuxt starter for GraphCMS
      </h2>
      <div>
        <router-link
          v-for="product in products"
          :to="{ name: 'product-slug', params: { slug: product.slug } }"
          :key="product.slug"
        >
          <article>
            <h1>{{ product.name }}</h1>
            <p>{{ product.description }}</p>
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
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
