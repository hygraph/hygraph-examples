<script>
  import { graphql, query } from '$houdini'

  const { data } = query(graphql`
    query Products {
      products {
        slug
        name
      }
    }
  `)
  const { products } = $data
</script>

<h1>GraphCMS with Houdini</h1>

<ul>
  {#each products as product}
    <section>
      <li>
        <a href={`/products/${product.slug}`}>
          {product.name}
        </a>
      </li>
    </section>
  {/each}
</ul>
