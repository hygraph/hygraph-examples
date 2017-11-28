import React from 'react'
import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import ErrorMessage from '../ErrorMessage'

import './AboutPage.css'

const AboutPage = ({ data: { loading, error, allAuthors } }) => {
  if (error) return <ErrorMessage message='Error loading author.' />
  if (!loading) {
    return allAuthors.map(author => (
      <div key='author.id'>
        <div className='AboutPage-infoHeader'>
          <img
            className='AboutPage-img'
            alt={author.name}
            src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`}
          />
          <h1>Hello! My name is {author.name}</h1>
        </div>
        <p>{author.bibliography}</p>
      </div>
    ))
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

export default graphql(allAuthors)(AboutPage)
