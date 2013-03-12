fs  = require 'fs'
tls = require 'tls'

module.exports = class Server

    constructor: (@config) -> 

    start: ->  

        # console.log 'start with', @config

        options = 

            key:  fs.readFileSync @config.key
            cert: fs.readFileSync @config.cert

        server = tls.createServer options, (clearTextStream) ->

            console.log 'server connected', 
                cleartextStream.authorized ? 'authorized' : 'unauthorized'
            cleartextStream.setEncoding 'utf8'
            cleartextStream.pipe cleartextStream


        server.listen @config.port, => 

            console. log 'listening @ port', @config.port


        require('plex').start

            mode: 'root'

            listen: 

                adaptor: 'socket.io'
                server: server

