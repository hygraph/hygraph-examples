<template>
  <div class="container mx-auto text-center">
    <div class="pt-4">
      <h2 class="text-xl">Nuxt with Hygraph</h2>
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
import { gql } from 'graphql-request';

export default {
  async asyncData({ $hygraph }) {
    const { products } = await $hygraph.request(
      gql`
        {
          products {
            name
            slug
          }
        }
      `
    );

    return { products };
  },
};
</script>
