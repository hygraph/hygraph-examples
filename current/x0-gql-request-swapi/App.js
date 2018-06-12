import React, { Fragment } from 'react'
import styled, { ServerStyleSheet, injectGlobal } from 'styled-components'
import { request } from 'graphql-request'

const URI = 'https://api.graphcms.com/simple/v1/swapi'

injectGlobal`
  * {
    box-sizing: border-box;
    margin: 0;
  }
  html {
    font-family: -apple-system, BlinkMacSystemFont, sans-serif;
    background: #000;
    background: linear-gradient(to right, #111, #000);
    color: #fff;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    line-height: 1.4;
  }
`

const App = props => (
  <Fragment>
    <head
      dangerouslySetInnerHTML={{
        __html: props.styles
      }}
    />
    <MainContent>
      <Logo>STAR WARS API</Logo>
      {props.films.map(film => (
        <Fragment key={film.id}>
          <EpisodeTitle>Episode {film.episodeId}</EpisodeTitle>
          <FilmTitle>{film.title}</FilmTitle>
          <OpeningCrawl>{film.openingCrawl}</OpeningCrawl>
          <CharactersTitle>Characters</CharactersTitle>
          <CharactersList>
            {film.characters.map(({ name, id }) => (
              <Character key={id}>
                {name}
              </Character>
            ))}
          </CharactersList>
        </Fragment>
      ))}
    </MainContent>
  </Fragment>
)

App.getInitialProps = async ({ Component, props }) => {
  const query = `{
    allFilms(orderBy: episodeId_ASC) {
      id
      episodeId
      title
      openingCrawl
      characters {
        id
        name
      }
    }
  }`
  const { allFilms } = await request(URI, query)

  const sheet = new ServerStyleSheet()
  sheet.collectStyles(<Component {...props} />)
  const styles = sheet.getStyleTags()

  return { films: allFilms, styles }
}

export default App

const MainContent = styled.div`
  max-width: 640px;
  margin: 32px auto;
`

const Logo = styled.h1`
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2px;
  -webkit-text-stroke-color: #fee81f;
  font-size: 5em;
  text-align: center;
  margin: 0 auto;
`

const EpisodeTitle = styled.h2`
  font-size: 3em;
  font-weight: 300;
  text-align: center;
  margin-top: 80px;
`

const FilmTitle = styled.h3`
  font-size: 2em;
  font-weight: 500;
  text-align: center;
`

const OpeningCrawl = styled.h4`
  color: #fee81f;
  font-size: 1.5em;
  font-weight: 500;
  text-align: center;
  margin: -64px 0 48px;
  transform-origin:50% 100%;
  transform:perspective(300px) rotateX(20deg);
`

const CharactersTitle = styled.h5`
  text-align: center;
  text-transform: uppercase;
  font-size: 1em;
  font-weight: 500;
  margin-bottom: 8px;
`

const CharactersList = styled.ul`
  list-style: none;
  display: flex;
  flex-wrap: wrap;
`

const Character = styled.li`
  background: linear-gradient(to right, #111, #000);
  margin: 8px;
  padding: 8px 16px;
  border: 1px solid #333;
  font-weight: 100;
`