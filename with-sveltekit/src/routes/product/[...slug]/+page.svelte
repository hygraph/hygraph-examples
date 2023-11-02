<script>
	/** @type {import('./$types').PageData} */
	export let data;
	const product = data.product;
</script>

<svelte:head>
	<title>{product.name}</title>
</svelte:head>

<h1>{product.name}</h1>
<p>{product.description}</p>
<p>${product.price / 100}</p>

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
