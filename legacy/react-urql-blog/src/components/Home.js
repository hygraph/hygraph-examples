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
            const {allPosts, _allPostsMeta} = data
            const areMorePosts = allPosts.length < _allPostsMeta.count
            return (
              <section>
                <ul className='Home-ul'>
                  {allPosts.map(post => (
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
  query allPosts($first: Int!) {
    allPosts(orderBy: dateAndTime_DESC, first: $first) {
      id
      slug
      title
      dateAndTime
      coverImage {
        handle
      }
    }
    _allPostsMeta {
        count
    }
  }
`

export default Home
