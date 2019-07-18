import React from 'react'
import {
  StyleSheet,
  Text,
  View,
  Image,
  FlatList,
  ActivityIndicator
} from 'react-native'
import gql from 'graphql-tag'
import { graphql } from 'react-apollo'

const About = ({ data: { loading, error, authors } }) => {
  if (error) return <Text>Error fetching authors!</Text>
  if (!loading) {
    return (
      <FlatList
        data={authors}
        renderItem={({ item }) => (
          <View style={styles.listItem}>
            <Image
              style={styles.image}
              source={{
                uri: `https://media.graphcms.com/resize=w:300,h:200,fit:crop/${item.avatar.handle}`
              }}
            />
            <Text style={styles.name}>Hello! My name is {item.name}</Text>
            <Text>{item.bibliography}</Text>
          </View>
        )}
        keyExtractor={item => item.id}
      />
    )
  }
  return <ActivityIndicator size='large' color='#0000ff' />
}

const styles = StyleSheet.create({
  listItem: {
    flex: 1,
    alignItems: 'center',
    padding: 32
  },
  image: {
    width: '100%',
    height: 200,
    marginBottom: 16
  },
  name: {
    fontSize: 24,
    marginBottom: 8
  }
})

export const authors = gql`
  query authors {
    authors {
      id
      name
      bibliography
      avatar {
        id
        handle
      }
    }
  }
`

export default graphql(authors)(About)
