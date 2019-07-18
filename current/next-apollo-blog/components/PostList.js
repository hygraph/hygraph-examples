import Link from 'next/link'
import { graphql } from 'react-apollo'
import gql from 'graphql-tag'

const POSTS_PER_PAGE = 2

const PostList = ({ data: { loading, error, posts, postsConnection }, loadMorePosts }) => {
  if (error) return <h1>Error loading posts.</h1>
  if (!loading) {
    const areMorePosts = posts.length < postsConnection.aggregate.count
    return (
      <section>
        <ul>
          {posts.map(post => (
            <li key={`post-${post.id}`}>
              <Link prefetch href={`/post?slug=${post.id}`} as={`/post/${post.id}`}>
                <a>
                  <div className='placeholder'>
                    <img
                      alt={post.title}
                      src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${post.coverImage.handle}`}
                    />
                  </div>
                  <h3>{post.title}</h3>
                </a>
              </Link>
            </li>
          ))}
        </ul>
        <div className='show-more-wrapper'>
          {areMorePosts
            ? <button onClick={() => loadMorePosts()}>
              {loading ? 'Loading...' : 'Show More Posts'}
            </button>
            : ''}
        </div>
        <style jsx>{`
          ul {
            padding: 0;
          }
          li {
            display: flex;
            align-items: center;
            margin-bottom: 16px;
            border: 1px solid #eee;
            overflow: hidden;
            border-radius: 5px;
          }
          a {
            display: flex;
            color: #000;
          }
          a:hover {
            box-shadow: 1px 1px 5px #999;
          }
          .placeholder {
            background-color: #eee;
            min-width: 100px;
            margin-right: 24px;
          }
          img {
            display: block;
            height: 100%;
          }
          .show-more-wrapper {
            display: flex;
            justify-content: center;
          }
          button {
            width: 100%;
            font-size: 16px;
            color: white;
            text-transform: uppercase;
            font-weight: bold;
            padding: 16px 24px;
            background: deepskyblue;
            border: none;
            border-radius: 0;
            cursor: pointer;
          }
        `}</style>
      </section>
    )
  }
  return <h2>Loading posts...</h2>
}

export const posts = gql`
  query posts($first: Int!, $skip: Int!) {
    posts(orderBy: dateAndTime_DESC, first: $first, skip: $skip) {
      id
      slug
      title
      dateAndTime
      coverImage {
        id
        handle
      }
    },
    postsConnection {
      aggregate {
        count
      }
    }
  }
`

export const postsQueryVars = {
  skip: 0,
  first: POSTS_PER_PAGE
}

export default graphql(posts, {
  options: {
    variables: postsQueryVars
  },
  props: ({ data }) => ({
    data,
    loadMorePosts: () => {
      return data.fetchMore({
        variables: {
          skip: data.posts.length
        },
        updateQuery: (previousResult, { fetchMoreResult }) => {
          if (!fetchMoreResult) {
            return previousResult
          }
          return Object.assign({}, previousResult, {
            // Append the new posts results to the old one
            posts: [...previousResult.posts, ...fetchMoreResult.posts]
          })
        }
      })
    }
  })
})(PostList)
