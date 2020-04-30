<template>
  <div class="product" v-if="product">
    <h1>{{ product.name }}</h1>
    <p>{{ product.description }}</p>
    <p>
      {{
        new Intl.NumberFormat('de-DE', {
          style: 'currency',
          currency: 'EUR',
        }).format(product.price / 100)
      }}
    </p>
  </div>
</template>
<script>
export default {
  data() {
    return {
      product: null,
      error: null,
      loading: true,
    };
  },
  created() {
    // fetch the data when the view is created and the data is
    // already being observed
    this.fetchData();
  },
  watch: {
    // call again the method if the route changes
    $route: 'fetchData',
  },
  methods: {
    async fetchData() {
      this.error = null;
      this.post = null;
      this.loading = true;
      // replace `getPost` with your data fetching util / API wrapper
      try {
        const response = await fetch(
          'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
          {
            method: 'POST',
            body: JSON.stringify({
              query: `query GetProduct($slug: String){ product(where: {slug: $slug}) { name description price } }`,
              variables: {
                slug: this.$route.params.slug,
              },
            }),
          }
        );
        const { data } = await response.json();
        this.loading = false;
        this.error = data.error;
        this.product = data.product;
      } catch (e) {
        // handle error
      }
    },
  },
};
</script>
