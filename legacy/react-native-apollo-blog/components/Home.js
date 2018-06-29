import React from 'react'
import {
  StyleSheet,
  ScrollView,
  Image,
  Text,
  View,
  Button,
  ActivityIndicator
} from 'react-native'
import { Link } from 'react-router-native'
import { graphql } from 'react-apollo'
import gql from 'graphql-tag'

const POSTS_PER_PAGE = 4

const Home = ({ data: { loading, error, allPosts, _allPostsMeta }, loadMorePosts }) => {
  if (error) return <Text>Error fetching posts!</Text>
  if (!loading) {
    const areMorePosts = allPosts.length < _allPostsMeta.count
    return (
      <View style={{flex: 1, paddingBottom: 32}}>
        <ScrollView>
          {allPosts.map(post => (
            <Link to={`/post/${post.slug}`} key={post.id}>
              <View style={styles.wrapper}>
                <Image
                  style={styles.image}
                  source={{
                    uri: `https://media.graphcms.com/resize=w:300,h:200,fit:crop/${post.coverImage.handle}`
                  }}
                />
                <Text style={styles.title}>{post.title}</Text>
              </View>
            </Link>
          ))}
        </ScrollView>
        {areMorePosts
          ? <Button
            title='Load more posts'
            onPress={() => loadMorePosts()}
            />
          : null}
      </View>
    )
  }
  return <ActivityIndicator size='large' color='#0000ff' />
}

const styles = StyleSheet.create({
  wrapper: {
    width: '100%'
  },
  image: {
    width: '100%',
    height: 200
  },
  title: {
    fontSize: 20,
    paddingTop: 8,
    paddingBottom: 32,
    paddingRight: 16,
    paddingLeft: 16
  },
  showMoreWrapper: {
    width: '100%'
  }
})

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
