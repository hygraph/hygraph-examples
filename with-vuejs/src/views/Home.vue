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
    const response = await fetch(
      'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
      {
        method: 'POST',
        body: JSON.stringify({
          query: `{ products { name slug } }`,
        }),
      }
    );

    const { data } = await response.json();

    this.errors = data.errors;
    this.loading = false;
    this.products = data.products;
  },
};
</script>
