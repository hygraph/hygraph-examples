<template>
  <div>
    <section v-if="posts">
      <ul>
        <li v-for="post in posts" :key="post.id">
          <router-link :to="`/post/${post.id}`" class='link'>
            <div class='placeholder'>
              <img
                :alt="post.title"
                :src="`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${post.coverImage.handle}`"
              />
            </div>
            <h3>{{post.title}}</h3>
          </router-link>
        </li>
      </ul>
      <button v-if="postCount && postCount > posts.length" @click="loadMorePosts">
        {{loading ? 'Loading...' : 'Show more'}}
      </button>
    </section>
    <h2 v-else>
      Loading...
    </h2>
  </div>
</template>

<script>
import gql from 'graphql-tag'

const POSTS_PER_PAGE = 2

const posts = gql`
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
    }
  }
`

export default {
  name: 'HomePage',
  data: () => ({
    loading: 0
  }),
  apollo: {
    $loadingKey: 'loading',
    posts: {
      query: posts,
      variables: {
        skip: 0,
        first: POSTS_PER_PAGE
      }
    },
    postCount: {
      query: gql`
        {
          postsConnection {
            aggregate {
              count
            }
          }
        }
      `,
      update: ({ postsConnection }) => postsConnection.aggregate.count
    }
  },
  methods: {
    loadMorePosts () {
      this.$apollo.queries.posts.fetchMore({
        variables: {
          skip: this.posts.length
        },
        updateQuery: (previousResult, { fetchMoreResult }) => {
          if (!fetchMoreResult) {
            return previousResult
          }
          return Object.assign({}, previousResult, {
            posts: [...previousResult.posts, ...fetchMoreResult.posts]
          })
        }
      })
    }
  }
}
</script>

<style scoped>
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
.link {
  display: flex;
  color: #000;
}
.link:hover {
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
</style>
