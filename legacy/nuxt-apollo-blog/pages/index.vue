<template>
  <div>
    <section v-if="allPosts">
      <ul>
        <li v-for="post in allPosts" :key="post.id">
          <router-link :to="`/post/${post.slug}`" class='link'>
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
      <button v-if="postCount && postCount > allPosts.length" @click="loadMorePosts">
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

  const allPosts = gql`
    query allPosts($first: Int!, $skip: Int!) {
      allPosts(orderBy: dateAndTime_DESC, first: $first, skip: $skip) {
        id
        slug
        title
        dateAndTime
        coverImage {
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
      allPosts: {
        query: allPosts,
        variables: {
          skip: 0,
          first: POSTS_PER_PAGE
        }
      },
      postCount: {
        query: gql`{ _allPostsMeta { count } }`,
        update: ({ _allPostsMeta }) => _allPostsMeta.count
      }
    },
    methods: {
      loadMorePosts () {
        this.$apollo.queries.allPosts.fetchMore({
          variables: {
            skip: this.allPosts.length
          },
          updateQuery: (previousResult, { fetchMoreResult }) => {
            if (!fetchMoreResult) {
              return previousResult
            }
            return Object.assign({}, previousResult, {
              allPosts: [...previousResult.allPosts, ...fetchMoreResult.allPosts]
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
