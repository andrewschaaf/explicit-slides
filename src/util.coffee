
fs = require 'fs'

_ = require 'underscore'
coffee_script = require 'coffee-script'
stylus = require 'stylus'


compileOnRequest = (app, publicRoot) ->
  _.map fs.readdirSync(publicRoot), (filename) ->
    
    compile = null
    if filename.match /\.coffee/
      mime = 'text/javascript'
      compiledName = filename.replace /\.coffee$/, '.js'
      compile = (src, callback) ->
        try
          callback null, coffee_script.compile src
        catch e
          callback e
    else if filename.match /\.styl/
      mime = 'text/css'
      compiledName = filename.replace /\.styl$/, '.css'
      compile = stylus.render
    
    if compile
      app.get "/#{compiledName}", (req, res, next) ->
        fs.readFile "#{publicRoot}/#{filename}", (e, data) ->
          throw e if e
          src = data.toString 'utf-8'
          compile src, (e, compiled) ->
            throw e if e
            res.writeHead 200, {'Content-Type': mime}
            res.end compiled


module.exports =
  compileOnRequest: compileOnRequest
