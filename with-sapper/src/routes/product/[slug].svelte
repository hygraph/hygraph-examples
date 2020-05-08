<script context="module">
  export async function preload({ params }) {
    const res = await this.fetch(`/graphcms-api-wrapper`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        variables: {
          slug: params.slug,
        },
        query: `query ProductPageQuery($slug: String!) {
      		product(where: { slug: $slug }) {
        		name
        		description
        	price
      	}
    }
    `,
      }),
    });
    const { data } = await res.json();

    product = data.product;
  }

  let product = {};
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
  <title>{product.name}</title>
</svelte:head>

<h1>{product.name}</h1>
<p>{product.description}</p>
<p>${product.price / 100}</p>
