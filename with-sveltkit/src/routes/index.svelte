<script context="module">
	import { GraphQLClient } from 'graphql-request';

	export async function load() {
		const graphcms = new GraphQLClient(
			'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
			{
				headers: {}
			}
		);

		const { products } = await graphcms.request(
			`{ 
        products {
          slug
          name
        }
      }`
		);

		return {
			props: {
				products
			}
		};
	}
</script>

<script>
	export let products;
</script>

<svelte:head>
	<title>SvelteKit project template</title>
</svelte:head>

<h1>GraphCMS with SvelteKit!</h1>

{#each products as product}
	<p>
		<a href="/product/{product.slug}">
			{product.name}
		</a>
	</p>
{/each}

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
