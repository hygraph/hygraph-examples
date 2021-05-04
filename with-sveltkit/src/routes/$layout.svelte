<script>
	import '../app.css';
</script>

<nav>
	<ul>
		<li><a href="/">Home</a></li>
	</ul>
</nav>

<main>
	<slot />
</main>

<style>
	main {
		position: relative;
		max-width: 56em;
		background-color: white;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
	nav {
		border-bottom: 1px solid rgba(255, 62, 0, 0.1);
		font-weight: 300;
		padding: 0 1em;
	}
	ul {
		margin: 0;
		padding: 0;
	}
	/* clearfix */
	ul::after {
		content: '';
		display: block;
		clear: both;
	}
	li {
		display: block;
		float: left;
	}
	a {
		text-decoration: none;
		padding: 1em 0.5em;
		display: block;
	}
</style>
