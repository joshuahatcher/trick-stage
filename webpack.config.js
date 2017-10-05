const path = require('path');

module.exports = {
  entry: path.join(__dirname, '/index.js'),
  output: {
    filename: 'index.bundle.js',
    path: path.join(__dirname, '')
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        use: [
          {
            loader: 'babel-loader',
            query: {
              presets: [ 'es2015' ]
            }
          }
        ]
      }
    ]
  }
}