

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


    hup: ->

        console.log '(hup) - pending propagate into tree'


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

        # console.log '%s:%s --> %s:%s', 
        #     nodes.from.class, 
        #     nodes.from.label,
        #     nodes.to.class,
        #     nodes.to.label

    handles: ['node', 'service']
    matches: []


    node: (node) -> 

        console.log '(register) %s:%s', node.class, node.label


    service: (node) -> 

        console.log '(register) %s:%s', node.class, node.label

