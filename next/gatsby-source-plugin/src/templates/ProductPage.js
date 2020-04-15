import React from 'react';
import { graphql } from 'gatsby';

const ProductPage = ({
  data: {
    gcms: { product },
  },
}) => (
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

export const pageQuery = graphql`
  query ProductPageQuery($id: ID!) {
    gcms {
      product(where: { id: $id }) {
        name
        description
        price
      }
    }
  }
`;

export default ProductPage;
