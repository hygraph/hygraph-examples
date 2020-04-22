<template>
  <div class="home" id="products">
    <img alt="Vue logo" src="../assets/logo.png" />
    <router-link
      v-for="product in products"
      :to="{ name: 'Product', params: { slug: product.slug } }"
      :key="product.slug"
    >
      <article>
        <h1>{{ product.name }}</h1>
        <p>{{ product.description }}</p>
      </article>
    </router-link>
  </div>
</template>

<script>
// @ is an alias to /src
export default {
  name: 'Home',
  components: {},
  data() {
    return {
      products: [],
      loading: true,
      errors: [],
    };
  },
  async created() {
    const response = await fetch(process.env.VUE_APP_GRAPHCMS_ENDPOINT, {
      method: 'POST',
      body: JSON.stringify({
        query: `{ products { name slug } }`,
      }),
    });

    const { data } = await response.json();

    this.errors = data.errors;
    this.loading = false;
    this.products = data.products;
  },
};
</script>
