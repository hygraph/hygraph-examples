import React from 'react';
import Markdown from 'react-markdown';
import { graphql } from 'gatsby';

import styles from '../styles/post.module.css';

export default ({ data }) => {
  const post = data.gcms.posts[0];
  return (
    <article>
      <h1>{post.title}</h1>
      <div className={styles.placeholder}>
        <img
          alt={post.title}
          src={`https://media.graphcms.com/resize=w:650,h:366,fit:crop/${
            post.coverImage.handle
          }`}
        />
      </div>
      <Markdown source={post.content} escapeHtml={false} />
    </article>
  );
};

export const query = graphql`
  query($slug: String!) {
    gcms {
      posts(where: { slug: $slug }) {
        id
        slug
        title
        coverImage {
          handle
        }
        content
      }
    }
  }
`;
