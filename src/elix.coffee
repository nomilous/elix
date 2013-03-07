module.exports = elix =

    configure: (stacker, config) -> 

        stacker.start = -> 

            Server = require './server'

            (new Server config).start()
