<script>
  import { gql, initClient, operationStore, query } from "@urql/svelte";

  initClient({
    url: "https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master",
  });

  const productsQuery = gql`
    query Products {
      products {
        slug
        name
      }
    }
  `;
  const products = operationStore(productsQuery);

  query(products);
</script>

{#if $products.fetching}
  <p>Loading...</p>
{:else if $products.error}
  <p>Error! {$products.error.message}</p>
{:else}
  <ul>
    {#each $products.data.products as product}
      <li>
        <a href={`/products/${product.slug}`}>
          {product.name}
        </a>
      </li>
    {/each}
  </ul>
{/if}
