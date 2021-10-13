<script>
  import { gql, operationStore, query } from '@urql/svelte';

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
