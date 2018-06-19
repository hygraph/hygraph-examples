import React from 'react'
import { Connect, query } from 'urql'

const About = () => (
  <Connect
    query={query(Authors)}
    children={({ loaded, data, error }) => {
      if (error) return <div>Error!</div>
      if (!loaded) return <div>Loading...</div>

      return (
        <div>
          {data.authors.map(author => (
            <div className='About-author' key={author.id}>
              <div className='About-infoHeader'>
                <img
                  className='About-img'
                  alt={author.name}
                  src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`}
              />
                <h1>Hello! My name is {author.name}</h1>
              </div>
              <p>{author.bibliography}</p>
            </div>
        ))}
        </div>
      )
    }
    }
  />
  )

export const Authors = `query allAuthors {
    authors {
      id
      name
      bibliography
      avatar {
        handle
      }
    }
  }`

export default About
