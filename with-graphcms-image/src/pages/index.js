import React from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import GCMSImg from 'graphcms-image';

const pageQuery = graphql`
  {
    gcms {
      products {
        name
        slug
        price
        image {
          handle
          width
          height
        }
      }
    }
  }
`;

const IndexPage = () => {
  const {
    gcms: { products },
  } = useStaticQuery(pageQuery);

  return products.map((product) => (
    <div style={{ textAlign: 'center' }}>
      <GCMSImg
        image={product.image}
        style={{ margin: '0 auto', maxWidth: '50%' }}
      />
      <h1>{product.name}</h1>
    </div>
  ));
};

export default IndexPage;
