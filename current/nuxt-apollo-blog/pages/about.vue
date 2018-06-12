<template>
  <h2 v-if="loading > 0">
    Loading...
  </h2>
  <div v-else>
    <div v-for="author in allAuthors" :key="author.id">
      <div class='author'>
        <div class='info-header'>
          <img
            :alt="author.name"
            :src="`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${author.avatar.handle}`"
          />
          <h1>Hello! My name is {{author.name}}</h1>
        </div>
        <p>{{author.bibliography}}</p>
      </div>
    </div>
  </div>
</template>

<script>
  import gql from 'graphql-tag'

  export const allAuthors = gql`
    query allAuthors {
      allAuthors {
        id
        name
        bibliography
        avatar {
          handle
        }
      }
    }
  `

  export default {
    name: 'AboutPage',
    data: () => ({
      loading: 0
    }),
    apollo: {
      $loadingKey: 'loading',
      allAuthors: {
        query: allAuthors
      }
    }
  }
</script>

<style scoped>
  .author {
    margin-bottom: 72px; 
  }
  .info-header {
    text-align: center;
  }
  img {
    height: 120px;
    width: auto;
  }
</style>
