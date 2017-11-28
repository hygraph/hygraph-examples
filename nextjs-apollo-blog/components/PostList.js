import Link from 'next/link'
import { graphql } from 'react-apollo'
import gql from 'graphql-tag'
import ErrorMessage from './ErrorMessage'

const POSTS_PER_PAGE = 2

const PostList = ({ data: { loading, error, allBlogPosts, _allBlogPostsMeta }, loadMorePosts }) => {
  if (error) return <ErrorMessage message='Error loading posts.' />
  if (!loading) {
    const areMorePosts = allBlogPosts.length < _allBlogPostsMeta.count
    return (
      <section>
        <ul>
          {allBlogPosts.map(post => (
            <li key={`post-${post.id}`}>
              <Link prefetch href={`/post?slug=${post.postSlug}`} as={`/post/${post.postSlug}`}>
                <a>
                  <img src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${post.postImage.handle}`} />
                  <h3>{post.postTitle}</h3>
                </a>
              </Link>
            </li>
          ))}
        </ul>
        <div className='show-more-wrapper'>
          {areMorePosts
            ? <button onClick={() => loadMorePosts()}>{loading ? 'Loading...' : 'Show More Posts'}</button>
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
          }
          a {
            display: flex;
            color: #000;
          }
          a:hover {
            box-shadow: 1px 1px 5px #999;
          }
          img {
            height: 100px;
            width: auto;
            border: 1px solid #eee;
            margin-right: 24px;
          }
          h2 {
            margin-bottom: 8px;
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

export const allBlogPosts = gql`
  query allBlogPosts($first: Int!, $skip: Int!) {
    allBlogPosts(orderBy: postDateAndTime_DESC, first: $first, skip: $skip) {
      id
      postSlug
      postTitle
      postDateAndTime
      postImage {
        handle
      }
    },
    _allBlogPostsMeta {
      count
    }
  }
`

export const allBlogPostsQueryVars = {
  skip: 0,
  first: POSTS_PER_PAGE
}

export default graphql(allBlogPosts, {
  options: {
    variables: allBlogPostsQueryVars
  },
  props: ({ data }) => ({
    data,
    loadMorePosts: () => {
      return data.fetchMore({
        variables: {
          skip: data.allBlogPosts.length
        },
        updateQuery: (previousResult, { fetchMoreResult }) => {
          if (!fetchMoreResult) {
            return previousResult
          }
          return Object.assign({}, previousResult, {
            // Append the new posts results to the old one
            allBlogPosts: [...previousResult.allBlogPosts, ...fetchMoreResult.allBlogPosts]
          })
        }
      })
    }
  })
})(PostList)
