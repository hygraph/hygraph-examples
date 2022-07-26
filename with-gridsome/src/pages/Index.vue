<template>
  <Layout>
    <g-image alt="Example image" src="~/favicon.png" width="135" />

    <h1>Hello, world!</h1>

    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur
      excepturi labore tempore expedita, et iste tenetur suscipit explicabo!
      Dolores, aperiam non officia eos quod asperiores
    </p>

    <p class="home-links" v-if="$page.hygraph">
      <g-link
        v-for="product in $page.hygraph.products"
        :key="product.slug"
        class="nav__link"
        :to="'product/' + product.slug"
        >{{ product.name }}</g-link
      >
    </p>
  </Layout>
</template>

<script>
export default {
  metaInfo: {
    title: 'Hello, world!',
  },
};
</script>

<page-query>
  {
    hygraph {
      products {
        name
        slug
      }
    }
  }
</page-query>

<style>
.home-links a {
  margin-right: 1rem;
}
</style>
