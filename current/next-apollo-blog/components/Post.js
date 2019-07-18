import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import Markdown from 'react-markdown'

const PostContent = ({ data: { loading, error, post } }) => {
  if (error) return <h1>Error loading post {JSON.stringify(error)}.</h1>
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
        <Markdown
          source={post.content}
          escapeHtml={false}
        />
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
  query singlePost($id: ID!) {
    post(where: {
      id: $id
    }) {
      id
      slug
      title
      coverImage {
        id
        handle
      }
      content
      dateAndTime
    }
  }
`

export default graphql(singlePost, {
  options: ({ id }) => ({ variables: { id } })
})(PostContent)
