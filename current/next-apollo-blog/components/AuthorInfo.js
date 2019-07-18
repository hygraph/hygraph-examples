import { Fragment } from 'react'
import gql from 'graphql-tag'
import { graphql } from 'react-apollo'

const AuthorInfo = ({ data: { loading, error, authors } }) => {
  if (error) return <h1>Error loading author.</h1>
  if (!loading) {
    return (
      <Fragment>
        {authors.map(author => (
          <div className='author' key={author.id}>
            <div className='info-header'>
              <img
                alt={author.name}
                src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`}
              />
              <h1>Hello! My name is {author.name}</h1>
            </div>
            <p>{author.bibliography}</p>
          </div>
        ))}
        <style jsx>{`
          .author {
            margin-bottom: 72px;
          }
          .info-header {
            text-align: center;
          }
          img {
            height: 120px;
            width: auto;
          }
        `}</style>
      </Fragment>
    )
  }
  return <h2>Loading author...</h2>
}

export const allAuthors = gql`
  query allAuthors {
    authors {
      id
      name
      bibliography
      avatar {
        id
        handle
      }
    }
  }
`

export default graphql(allAuthors)(AuthorInfo)
