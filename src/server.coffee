module.exports = class Server

    constructor: (@config) -> 

    start: ->  

        console.log 'start with', @config

        require('plex').start 

            mode: 'root'

            listen: 

                adaptor: 'socket.io'
                port: @config.port

