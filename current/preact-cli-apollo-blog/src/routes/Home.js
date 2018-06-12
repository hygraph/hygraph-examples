import { Link } from 'preact-router/match'
import { graphql } from 'react-apollo'
import gql from 'graphql-tag'

const POSTS_PER_PAGE = 4

const Home = ({ data: { loading, error, allPosts, _allPostsMeta }, loadMorePosts }) => {
  if (error) return <h1>Error fetching posts!</h1>
  if (!loading) {
    const areMorePosts = allPosts.length < _allPostsMeta.count
    return (
      <section>
        <ul className='Home-ul'>
          {allPosts.map(post => (
            <li className='Home-li' key={`post-${post.id}`}>
              <Link href={`/post/${post.slug}`} className='Home-link'>
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
            ? <button className='Home-button' onClick={() => loadMorePosts()}>
              {loading ? 'Loading...' : 'Show More Posts'}
            </button>
            : ''}
        </div>
      </section>
    )
  }
  return <h2>Loading posts...</h2>
}

export const allPosts = gql`
  query allPosts($first: Int!, $skip: Int!) {
    allPosts(orderBy: dateAndTime_DESC, first: $first, skip: $skip) {
      id
      slug
      title
      dateAndTime
      coverImage {
        handle
      }
    },
    _allPostsMeta {
      count
    }
  }
`

export const allPostsQueryVars = {
  skip: 0,
  first: POSTS_PER_PAGE
}

export default graphql(allPosts, {
  options: {
    variables: allPostsQueryVars
  },
  props: ({ data }) => ({
    data,
    loadMorePosts: () => {
      return data.fetchMore({
        variables: {
          skip: data.allPosts.length
        },
        updateQuery: (previousResult, { fetchMoreResult }) => {
          if (!fetchMoreResult) {
            return previousResult
          }
          return Object.assign({}, previousResult, {
            // Append the new posts results to the old one
            allPosts: [...previousResult.allPosts, ...fetchMoreResult.allPosts]
          })
        }
      })
    }
  })
})(Home)
