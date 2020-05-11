import React from 'react';
import { useParams } from 'react-router-dom';

function Product({ products }) {
  const { slug } = useParams();

  const product = products.find((product) => product.slug === slug);

  return <h1>{product.name}</h1>;
}

export default Product;
