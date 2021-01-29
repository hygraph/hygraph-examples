import * as React from 'react';
import { graphql } from 'gatsby';
import { MDXRenderer } from 'gatsby-plugin-mdx';

const ProductPage = ({ data: { product } }) => (
  <React.Fragment>
    <h1>{product.name}</h1>
    <p>{product.description}</p>
    <p>
      {new Intl.NumberFormat('de-DE', {
        style: 'currency',
        currency: 'EUR',
      }).format(product.price)}
    </p>
    {product.content ? (
      <MDXRenderer>{product.content.markdownNode.childMdx.body}</MDXRenderer>
    ) : null}
  </React.Fragment>
);

export const pageQuery = graphql`
  query ProductPageQuery($id: String!) {
    product: graphCmsProduct(id: { eq: $id }) {
      name
      description
      price
      content {
        markdownNode {
          childMdx {
            body
          }
        }
      }
    }
  }
`;

export default ProductPage;
