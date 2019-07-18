import React from 'react'
import {
  StyleSheet,
  ScrollView,
  Image,
  Text,
  ActivityIndicator
} from 'react-native'
import gql from 'graphql-tag'
import { graphql } from 'react-apollo'
import HTMLView from 'react-native-htmlview'

const Post = ({ data: { loading, error, post } }) => {
  if (error) return <Text>Error fetching the post.</Text>
  if (!loading) {
    return (
      <ScrollView>
        <Text style={styles.title}>{post.title}</Text>
        <Image
          style={styles.image}
          alt={post.title}
          source={{
            uri: `https://media.graphcms.com/resize=w:300,h:200,fit:crop/${post.coverImage.handle}`
          }}
        />
        <HTMLView
          stylesheet={htmlStyles}
          value={post.content}
          addLineBreaks={false}
        />
      </ScrollView>
    )
  }
  return <ActivityIndicator size='large' color='#0000ff' />
}

const styles = StyleSheet.create({
  title: {
    fontSize: 30,
    fontWeight: 'bold',
    padding: 16
  },
  image: {
    width: '100%',
    height: 200,
    marginBottom: 24
  }
})

const htmlStyles = StyleSheet.create({
  p: {
    fontSize: 18,
    paddingLeft: 16,
    paddingRight: 16,
    margin: 0
  }
})

export const singlePost = gql`
  query singlePost($id: ID!) {
    post(where: {id: $id}) {
      id
      slug
      title
      coverImage {
        id
        handle
      }
      content
      dateAndTime
    }
  }
`

export default graphql(singlePost, {
  options: ({ match }) => ({
    variables: {
      id: match.params.slug
    }
  })
})(Post)
