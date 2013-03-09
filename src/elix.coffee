module.exports = elix =

    configure: (stacker, config) -> 

        # #
        # # absolute path of the rootFile
        # # 
        # # (that called this plugin)
        # #
        # stacker.rootFile = fing.trace()[2].file


        #
        # initialize the server with config
        #

        elix.server = new (require './server') config


    edge: (placeholder, nodes) -> 

        if nodes.from.class == 'elix' and nodes.class == 'Tree.Rootward'

            #
            # Walker (thread) is departing the branch.
            # All config will have been collected.
            # 
            # Start the server.
            # 

            elix.server.start()


        #
        # display edge traversals
        #

        console.log '%s:%s --> %s:%s', 
            nodes.from.class, 
            nodes.from.label,
            nodes.to.class,
            nodes.to.label