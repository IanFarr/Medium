const path = require('path');

module.exports = {
  context: __dirname,
  entry: './frontend/medium.jsx',
  output: {
    path: path.resolve(__dirname, 'app', 'assets', 'javascripts', 'images'),
    assetModuleFilename: 'images',
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: 
        {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/env', '@babel/react']
          }
        },
      },

      {
        test: [/\.bmp$/, /\.gif$/, /\.jpe?g$/, /\.png$/],
        loader: require.resolve('url-loader'),
        options: {
          limit: 10000,
          name: 'static/media/[name].[hash:8].[ext]'
        },
      },
    ]
  },

  devtool: 'source-map',
  resolve: {
    extensions: [".js", ".jsx", "*"]
  }
};
