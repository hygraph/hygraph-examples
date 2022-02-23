<script lang="ts" context="module">
  import {
    AllProductsQuery,
    AllProductsQueryStore,
  } from '$lib/graphql/_kitql/graphqlStores'

  export const load = async ({ fetch }) => {
    await AllProductsQuery({ fetch })
    return {}
  }
</script>

<script lang="ts">
  let products = $AllProductsQueryStore.data?.products
</script>

<h1>Welcome to KitQL</h1>

{#each products as { name, slug }}
  <p>
    <a href="/product/{slug}">
      {name}
    </a>
  </p>
{/each}
