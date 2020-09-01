import React from 'react';
import { graphql, useStaticQuery, Link } from 'gatsby';

const pageQuery = graphql`
  {
    products: allGraphCmsProduct {
      nodes {
        name
        slug
        price
      }
    }
  }
`;

const IndexPage = () => {
  const { products } = useStaticQuery(pageQuery);

  return products.nodes.map(({ slug, ...product }) => (
    <Link key={slug} to={`/products/${slug}`}>
      {product.name}
    </Link>
  ));
};

export default IndexPage;
