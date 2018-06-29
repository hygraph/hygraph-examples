const { writeFileSync } = require('fs')
const RSS = require('rss');
const { createApolloFetch } = require('apollo-fetch')

const client = createApolloFetch({
  uri: 'https://api.graphcms.com/simple/v1/rssexample',
});

const feed = new RSS({
  title: 'Graphcms Test Feed',
  description: 'This is a test feed',
  feed_url: 'http://localhost:5000/rss.xml',
  site_url: 'http://localhost:5000',
  image_url: 'http://localhost:5000/graphcms_logo.png',
  managingEditor: 'Graphcms',
  webMaster: 'Graphcms',
  copyright: '2017 Graphcms',
  language: 'en',
  pubDate: 'November 25, 2017 04:00:00 GMT',
  ttl: 60,
});
const query = `{
    items: allArticles {
      guid: id
      title
      description: content
      categories: tags
      slug
      date: createdAt
    }
  }`;

client({ query })
  .then(res => res.data.items)
  .then(items => {
      items.forEach(({ slug, ...item }) => {
        feed.item({ ...item, url: `http://example.com/${slug}` });
      });
    }
  )
  .then(() => {
    return feed.xml();
  })
  .then(xml => {
    console.log('Writing XML');
    writeFileSync('./deploy/rss.xml', xml);
  })
