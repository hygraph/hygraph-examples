const htmlStandards = require('reshape-standard')
const cssStandards = require('spike-css-standards')
const {UglifyJsPlugin} = require('webpack').optimize

module.exports = {
  // disable source maps
  devtool: false,
  // minify js
  plugins: [new UglifyJsPlugin()],
  // minify html and css
  reshape: htmlStandards({ minify: true }),
  postcss: cssStandards({
    minify: true,
    warnForDuplicates: false // cssnano includes autoprefixer
  })
}
