import { graphql, useStaticQuery } from 'gatsby';
import { GatsbyImage } from 'gatsby-plugin-image';
import React from 'react';

const pageQuery = graphql`
  {
    products: allGraphCmsProduct {
      nodes {
        name
        slug
        price
        image {
          url
          localFile {
            childImageSharp {
              gatsbyImageData(width: 560, layout: CONSTRAINED)
            }
          }
        }
      }
    }
  }
`;

const IndexPage = () => {
  const { products } = useStaticQuery(pageQuery);

  return products.nodes.map((product, index) => (
    <div style={{ textAlign: 'center' }} key={index}>
      <GatsbyImage
        image={product.image.localFile.childImageSharp.gatsbyImageData}
        style={{ margin: '0 auto', maxWidth: '50%' }}
      />
      <h1>{product.name}</h1>
    </div>
  ));
};

export default IndexPage;
