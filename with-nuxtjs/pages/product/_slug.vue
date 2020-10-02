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

<script>
import { gql } from 'graphql-request';

export default {
  async asyncData({ $graphcms, params }) {
    const { slug } = params;

    const { product } = await $graphcms.request(
      gql`
        query GetProduct($slug: String) {
          product(where: { slug: $slug }) {
            name
            description
            price
          }
        }
      `,
      {
        slug,
      }
    );

    return { product };
  },
  head() {
    return {
      title: this.product.name,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: this.product.description,
        },
      ],
    };
  },
};
</script>
