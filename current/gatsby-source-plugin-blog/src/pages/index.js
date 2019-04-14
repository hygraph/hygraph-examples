import React from 'react';
import { Link } from 'gatsby';
import Layout from '../components/layout';
import { graphql } from 'gatsby';

import styles from '../styles/index.module.css';

const IndexPage = ({ data }) => (
  <Layout>
    <section>
      <ul className={styles.ul}>
        {data.gcms.allPosts.edges.map(post => (
          <li className={styles.li} key={post.node.id}>
            <Link to={`/post/${post.node.slug}`} className={styles.a}>
              <div className={styles.placeholder}>
                <img
                  alt={post.node.title}
                  className={styles.img}
                  src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${
                    post.node.coverImage.handle
                  }`}
                />
              </div>
              <h3>{post.node.title}</h3>
            </Link>
          </li>
        ))}
      </ul>
    </section>
  </Layout>
);

export default IndexPage;

export const allPostsQuery = graphql`
  query {
    gcms {
      allPosts: postsConnection(orderBy: dateAndTime_DESC) {
        edges {
          node {
            id
            title
            slug
            coverImage {
              handle
            }
          }
        }
      }
    }
  }
`;
