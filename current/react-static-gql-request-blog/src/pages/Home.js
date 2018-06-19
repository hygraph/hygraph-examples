import React from 'react'
import { withRouteData, Link } from 'react-static'

export default withRouteData(({ posts }) => (
  <section>
    <ul className='home-ul'>
      {posts.map(post => (
        <li className='home-li' key={post.id}>
          <Link to={`/post/${post.id}`} className='home-link'>
            <div className='home-placeholder'>
              <img
                className='home-link'
                alt={post.title}
                src={`https://media.graphcms.com/resize=w:100,h:100,fit:crop/${post.coverImage.handle}`}
              />
            </div>
            <h3>{post.title}</h3>
          </Link>
        </li>
      ))}
    </ul>
  </section>
))
