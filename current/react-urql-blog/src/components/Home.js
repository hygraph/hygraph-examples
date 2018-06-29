import React from 'react'
import { Link } from 'react-router-dom'
import { Connect, query } from 'urql'

const POSTS_PER_PAGE = 4

class Home extends React.Component {
  state = {
    first: 4
  }

  render () {
    return (
      <Connect
        query={query(Posts, { first: this.state.first })}
        children={({ loaded, data, error, refetch }) => {
          if (error) return <div>Error!</div>
          if (loaded) {
            const {posts, postsConnection} = data
            const areMorePosts = posts.length < postsConnection.aggregate.count
            return (
              <section>
                <ul className='Home-ul'>
                  {posts.map(post => (
                    <li className='Home-li' key={`post-${post.id}`}>
                      <Link to={`/post/${post.id}`} className='Home-link'>
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
                <div className='Home-showMoreWrapper'>
                  {areMorePosts
                ? <button className='Home-button' onClick={() => this.setState(({ first }) => ({ first: first + POSTS_PER_PAGE }))}>
                  {!loaded ? 'Loading...' : 'Load next page'}
                </button>
                : ''}
                </div>
              </section>
            )
          }
          return <div>Loading...</div>
        }
      } />
    )
  }
}

export const Posts = `
  query posts($first: Int!) {
    posts(orderBy: dateAndTime_DESC, first: $first) {
      id
      slug
      title
      dateAndTime
      coverImage {
        handle
      }
    }
    postsConnection {
      aggregate {
        count
      }
    }
  }
`

export default Home
