import React from 'react'
import { Connect, query } from 'urql'
import Markdown from 'react-markdown'

const Post = ({match}) => (
  <Connect
    query={query(SinglePost, {id: match.params.slug})}
    children={({loaded, data, error}) => {
      if (error) return <div>Error!</div>
      if (!loaded) return <div>Loading post...</div>

      return (
        <article>
          <h1>{data.post.title}</h1>
          <div className='Post-placeholder'>
            <img
              alt={data.post.title}
              src={`https://media.graphcms.com/resize=w:650,h:366,fit:crop/${data.post.coverImage.handle}`}
            />
          </div>
          <Markdown
            source={data.post.content}
            escapeHtml={false}
          />
        </article>
      )
    }
  }
  />
)

export const SinglePost = `
query singlePost($id: ID!) {
  post(where: {id: $id}) {
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

export default Post
