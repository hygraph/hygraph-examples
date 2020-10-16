import React from 'react';
import { graphql, Link } from 'gatsby';

function IndexPage({ data: { products } }) {
  return products.nodes.map((product) => (
    <Link key={product.id} to={product.gatsbyPath}>
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
        gatsbyPath(filePath: "/{GraphCmsProduct.slug}")
      }
    }
  }
`;

export default IndexPage;
