import React from 'react'
import { StyleSheet, Text, View } from 'react-native'
import { Link } from 'react-router-native'

export default class Header extends React.Component {
  render () {
    return (
      <View style={styles.header}>
        <Text style={styles.headerText}>
          GraphCMS Starter blog
        </Text>
        <View style={styles.nav}>
          <Link
            to='/'
            underlayColor='#f0f4f7'
            style={styles.navItem}>
            <Text style={styles.navText}>Home</Text>
          </Link>
          <Link
            to='/about'
            underlayColor='#f0f4f7'
            style={styles.navItem}>
            <Text style={styles.navText}>About</Text>
          </Link>
        </View>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  header: {
    alignItems: 'center',
    width: '100%',
    height: 56,
    marginTop: 40,
    marginBottom: 16
  },
  headerText: {
    fontSize: 24,
    fontWeight: '100'
  },
  nav: {
    flexDirection: 'row',
    justifyContent: 'space-around'
  },
  navItem: {
    alignItems: 'center',
    padding: 10
  },
  navText: {
    fontSize: 16
  }
})
