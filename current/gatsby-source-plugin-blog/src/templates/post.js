/* global graphql */
import React from 'react'
import Markdown from 'react-markdown'

import styles from '../styles/post.module.css'

export default ({ data }) => {
  const post = data.posts
  return (
    <article>
      <h1>{post.title}</h1>
      <div className={styles.placeholder}>
        <img
          alt={post.title}
          src={`https://media.graphcms.com/resize=w:650,h:366,fit:crop/${post.coverImage.handle}`}
        />
      </div>
      <Markdown
        source={post.content}
        escapeHtml={false}
      />
    </article>
  )
}

export const query = graphql`
  query BlogPostQuery($slug: String!) {
    posts(slug: { eq: $slug }) {
      id
      slug
      title
      coverImage {
        handle
      }
      content
    }
  }
`
