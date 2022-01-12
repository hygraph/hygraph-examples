<script context="module">
  export const ProductVariables = ({ params }) => {
    const { slug } = params

    return {
      slug,
    }
  }
</script>

<script>
  import { graphql, query } from '$houdini'
  const { data } = query(
    graphql`
      query Product($slug: String!) {
        product(where: { slug: $slug }) {
          name
          description
          price
          image {
            url(
              transformation: {
                image: { resize: { fit: clip, height: 200 } }
              }
            )
          }
          content {
            html
          }
        }
      }
    `
  )
  const { product } = $data
</script>

<div>
  <h1>{product.name}</h1>
  <p>{product.description}</p>
  <p>Price: €{product.price / 100}</p>
  <img src={product.image.url} alt={product.name} />
  <div>
    {@html product.content.html}
  </div>
</div>
