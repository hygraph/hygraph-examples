import gql from 'graphql-tag'
import { graphql } from 'react-apollo'

const PostContent = ({ data: { loading, error, post } }) => {
  if (error) return <h1>Error loading post.</h1>
  if (!loading) {
    return (
      <article>
        <h1>{post.title}</h1>
        <div className='placeholder'>
          <img
            alt={post.title}
            src={`https://media.graphcms.com/resize=w:650,h:366,fit:crop/${post.coverImage.handle}`}
          />
        </div>
        <div dangerouslySetInnerHTML={{ __html: post.content }} />
        <style jsx>{`
          .placeholder {
            height: 366px;
            background-color: #eee;
          }
        `}</style>
      </article>
    )
  }
  return <h2>Loading post...</h2>
}

export const singlePost = gql`
  query singlePost($slug: String!) {
    post: Post(slug: $slug) {
      id
      slug
      title
      coverImage {
        handle
      }
      content
      dateAndTime
    }
  }
`

export default graphql(singlePost, {
  options: ({ slug }) => ({ variables: { slug } })
})(PostContent)
