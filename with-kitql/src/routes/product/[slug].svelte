<script context="module">
  import {
    GetProductQuery,
    GetProductQueryStore,
  } from '$lib/graphql/_kitql/graphqlStores'

  export const load = async ({ params, fetch }) => {
    const { slug } = params
    if (slug) await GetProductQuery({ fetch, variables: { slug } })
    return {}
  }
</script>

<script lang="ts">
  let name = $GetProductQueryStore.data?.product?.name
  let description = $GetProductQueryStore.data?.product?.description
  let price = $GetProductQueryStore.data?.product?.price
  let image = $GetProductQueryStore.data?.product?.image.url
</script>

<h1>{name}</h1>
<p>{description}</p>
<p>${price / 100}</p>
<img src={image} alt={name} />
