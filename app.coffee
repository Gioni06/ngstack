axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

# Additional modules

less         = require 'less'
lessPluginAutoPrefix = require 'less-plugin-autoprefix'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', 'assets/components/*']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.less')
  ]

  less:
    use: [lessPluginAutoPrefix()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true