<script>
	/** @type {import('./$types').PageData} */
	export let data;

	const products = data.products;
</script>

<svelte:head>
	<title>SvelteKit project template</title>
</svelte:head>

<h1>Hygraph with SvelteKit!</h1>

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
