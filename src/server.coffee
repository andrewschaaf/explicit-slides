
fs = require 'fs'

express = require 'express'

{compileOnRequest} = require './util'


class Server
  
  constructor: () ->
    express = require 'express'
    app = express.createServer()
    app.set 'views', "#{__dirname}/views"
    app.set 'view engine', 'jade'
    app.use express.bodyParser()
    app.use app.router
    app.use express.errorHandler()
    
    compileOnRequest app, "#{__dirname}/public"
    
    app.get '/dev', (req, res, next) ->
      res.render 'dev'
    
    port = 9000
    app.listen port, () ->
      console.log "Listening on #{port}"


if not module.parent
  new Server()

module.exports =
  Server: Server
