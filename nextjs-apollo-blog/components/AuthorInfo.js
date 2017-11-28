import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import ErrorMessage from '../components/ErrorMessage'

const AuthorInfo = ({ data: { loading, error, author } }) => {
  if (error) return <ErrorMessage message='Error loading author.' />
  if (!loading) {
    return (
      <div>
        <div className='info-header'>
          <img src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`} />
          <h1>Hello! My name is {author.name}</h1>
        </div>
        <p>{author.bibliography}</p>
        <style jsx>{`
          .info-header {
            text-align: center;
          }
          img {
            height: 120px;
            width: auto;
          }
        `}</style>
      </div>
    )
  }
  return <h2>Loading author...</h2>
}

export const aboutAuthor = gql`
  query aboutAuthor($authorId: ID!) {
    author: Author(id: $authorId) {
      name
      bibliography
      avatar {
        handle
      }
    }
  }
`

export default graphql(aboutAuthor, {
  options: ({ authorId }) => ({ variables: { authorId } })
})(AuthorInfo)
