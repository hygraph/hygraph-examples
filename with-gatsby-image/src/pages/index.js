import React from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import Img from 'gatsby-image';

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
              fluid(maxWidth: 560) {
                ...GatsbyImageSharpFluid
              }
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
      <Img
        fluid={product.image.localFile.childImageSharp.fluid}
        style={{ margin: '0 auto', maxWidth: '50%' }}
      />
      <h1>{product.name}</h1>
    </div>
  ));
};

export default IndexPage;
