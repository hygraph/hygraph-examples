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
import { gql } from 'graphql-request';

export default {
  data() {
    return {
      product: null,
      error: null,
      loading: true,
    };
  },
  created() {
    this.fetchData();
  },
  watch: {
    $route: 'fetchData',
  },
  methods: {
    async fetchData() {
      this.error = null;
      this.product = null;
      this.loading = true;

      try {
        const data = await this.$graphcms.request(
          gql`
            query getProductBySlug($slug: String) {
              product(where: { slug: $slug }) {
                name
                description
                price
              }
            }
          `,
          {
            slug: this.$route.params.slug,
          }
        );

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
