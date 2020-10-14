import React from 'react';
import { graphql, Link } from 'gatsby';

function IndexPage({ data: { products } }) {
  return products.nodes.map((product) => (
    <Link to={product.gatsbyPath}>{product.name}</Link>
  ));
}

export const pageQuery = graphql`
  query IndexPageQuery {
    products: allGraphCmsProduct {
      nodes {
        name
        gatsbyPath(filePath: "./{GraphCmsProduct.slug}")
      }
    }
  }
`;

export default IndexPage;
