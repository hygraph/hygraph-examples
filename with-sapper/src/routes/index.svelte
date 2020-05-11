<script context="module">
  let products = [];
  export async function preload() {
    const res = await this.fetch(`/graphcms-api-wrapper`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        query: `
      { 
        products {
          slug
          name
        }
      }
    `,
      }),
    });
    const { data } = await res.json();
    products = data.products;
  }
</script>

<style>
  h1,
  p {
    text-align: center;
    margin: 0 auto;
  }

  h1 {
    font-size: 2.8em;
    text-transform: uppercase;
    font-weight: 700;
    margin: 0 0 0.5em 0;
  }

  p {
    margin: 1em auto;
  }

  @media (min-width: 480px) {
    h1 {
      font-size: 4em;
    }
  }
</style>

<svelte:head>
  <title>Sapper project template</title>
</svelte:head>

<h1>GraphCMS with SvelteJs!</h1>

{#each products as product}
  <p>
    <a href="/product/{product.slug}">
      <strong>{product.name}</strong>
    </a>
  </p>
{:else}
  <p>Loading...</p>
{/each}
