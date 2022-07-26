import { graphql } from 'gatsby';
import React from 'react';

function ProductPage({ data: { product } }) {
  return (
    <React.Fragment>
      <h1>{product.name}</h1>
      <p>{product.description}</p>
      <p>
        {new Intl.NumberFormat('de-DE', {
          style: 'currency',
          currency: 'EUR',
        }).format(product.price)}
      </p>
    </React.Fragment>
  );
}

export const pageQuery = graphql`
  query ProductPageQuery($slug: String!) {
    product: graphCmsProduct(slug: { eq: $slug }) {
      description
      name
      price
    }
  }
`;

export default ProductPage;
