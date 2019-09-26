const { environment } = require('@rails/webpacker')
const webpack = require('webpack');

const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}));

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)

module.exports = environment
