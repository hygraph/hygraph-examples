import { graphql, Link } from 'gatsby';
import React from 'react';

function IndexPage({ data: { products } }) {
  return products.nodes.map((product) => (
    <Link key={product.id} to={product.slug}>
      {product.name}
    </Link>
  ));
}

export const pageQuery = graphql`
  {
    products: allGraphCmsProduct {
      nodes {
        id
        name
        slug
      }
    }
  }
`;

export default IndexPage;
