import adapter from '@sveltejs/adapter-auto'
import houdini from 'houdini-preprocess'
import path from 'path'

/** @type {import('@sveltejs/kit').Config} */
const config = {
  preprocess: [houdini()],
  kit: {
    adapter: adapter(),

    // hydrate the <div id="svelte"> element in src/app.html
    target: '#svelte',
    vite: {
      resolve: {
        alias: {
          $houdini: path.resolve('.', '$houdini'),
        },
      },
      server: {
        fs: {
          // Allow serving files from one level up to the project root
          // posts, copy
          allow: ['..'],
        },
      },
    },
  },
}

export default config
