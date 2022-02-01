<script context="module">
  export const load = async ({ params }) => {
    const { slug } = params;
    return {
      props: { slug },
    };
  };
</script>

<script>
  export let slug;
  import { gql, operationStore, query } from '@urql/svelte';

  const productQuery = gql`
    query Product($slug: String!) {
      product(where: { slug: $slug }) {
        name
        description
        price
        image {
          url(transformation: { image: { resize: { fit: clip, height: 200 } } })
        }
        content {
          html
        }
      }
    }
  `;
  const product = operationStore(productQuery, { slug });

  query(product);
</script>

{#if $product.fetching}
  <p>Loading...</p>
{:else if $product.error}
  <p>Error! {$product.error.message}</p>
{:else}
  <div>
    <h1>{$product.data.product.name}</h1>
    <p>{$product.data.product.description}</p>
    <p>Price: €{$product.data.product.price / 100}</p>
    <img
      src={$product.data.product.image.url}
      alt={$product.data.product.name}
    />
    <div>
      {@html $product.data.product.content.html}
    </div>
  </div>
{/if}
