fs    = require 'fs'
https = require 'https'

module.exports = class Server

    constructor: (@config) -> 

    start: ->  

        # console.log 'start with', @config

        options = 

            key:  fs.readFileSync @config.key
            cert: fs.readFileSync @config.cert

        server = https.createServer options, (cleartextStream) ->

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

