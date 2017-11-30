import { Fragment } from 'react'
import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import ErrorMessage from '../components/ErrorMessage'

const AuthorInfo = ({ data: { loading, error, allAuthors } }) => {
  if (error) return <ErrorMessage message='Error loading author.' />
  if (!loading) {
    return (
      <Fragment>
        {allAuthors.map(author => (
          <Fragment key={author.id}>
            <div className='info-header'>
              <img
                alt={author.name}
                src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`}
              />
              <h1>Hello! My name is {author.name}</h1>
            </div>
            <p>{author.bibliography}</p>
          </Fragment>
        ))}
        <style jsx>{`
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
    allAuthors {
      id
      name
      bibliography
      avatar {
        handle
      }
    }
  }
`

export default graphql(allAuthors)(AuthorInfo)
