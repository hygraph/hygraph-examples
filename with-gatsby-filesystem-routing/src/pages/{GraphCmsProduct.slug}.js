import React from 'react';
import { graphql } from 'gatsby';

function ProductPage({ data: { product } }) {
  return <pre>{JSON.stringify(product, null, 2)}</pre>;
}

export const pageQuery = graphql`
  query ProductPageQuery($id: String!) {
    product: graphCmsProduct(id: { eq: $id }) {
      description
      name
      price
    }
  }
`;

export default ProductPage;
