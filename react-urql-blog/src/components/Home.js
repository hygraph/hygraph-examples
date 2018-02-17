import React from 'react'
import { Link } from 'react-router-dom'
import { Connect, query } from 'urql'

const Home = () => (
  <Connect
    query={query(Posts)}
    children={({ loaded, data, error}) => {
      if (error) return <div>Error!</div>
      if (!loaded) return <div>Loading...</div>

      return (
      <section>
        <ul className='Home-ul'>
          {data.allPosts.map(post => (
            <li className='Home-li' key={`post-${post.id}`}>
              <Link to={`/post/${post.slug}`} className='Home-link'>
                <div className='Home-placeholder'>
                  <img
                    alt={post.title}
                    className='Home-img'
                    src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${post.coverImage.handle}`}
                  />
                </div>
                <h3>{post.title}</h3>
              </Link>
            </li>
          ))}
        </ul>
      </section>
    )
    }
  } />
)

export const Posts = `{
  allPosts(orderBy: dateAndTime_DESC) {
    id
    slug
    title
    dateAndTime
    coverImage {
      handle
    }
  }
}`

export default Home
