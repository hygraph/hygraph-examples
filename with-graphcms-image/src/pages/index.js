import React from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import HygraphImage from '@graphcms/react-image';

const pageQuery = graphql`
  {
    hygraph {
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
    hygraph: { products },
  } = useStaticQuery(pageQuery);

  return products.map((product) => (
    <div style={{ textAlign: 'center' }}>
      <HygraphImage
        image={product.image}
        style={{ margin: '0 auto', maxWidth: '50%' }}
      />
      <h1>{product.name}</h1>
    </div>
  ));
};

export default IndexPage;
