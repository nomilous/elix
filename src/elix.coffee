module.exports = elix =

    configure: (stacker, config) -> 

        #
        # initialize the server with config
        #

        elix.server = new (require './server') config


    edge: (placeholder, nodes) -> 

        if nodes.to.class == 'elix'

            #
            # Walker (thread) has arrived back at the 
            # root node. All config will have been 
            # accumulated.
            # 
            # Start the server.
            # 

            elix.server.start()
