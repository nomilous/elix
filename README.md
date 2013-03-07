elix
====

**Root Node**

Crafts an application from [Brix](https://github.com/nomilous/brix)


Environment
-----------

using not yet released `nez`

```bash

mkdir node_modules && cd node_modules
git clone git@github.com:nomilous/nez.git
cd ../ && npm install

```

Implementation Objective
------------------------

```bash
./objective
```

Usage
-----

this may change

### `/home/daemon_name/live/root`

```coffee
#!/usr/bin/env coffee

#
# Application Root Node
#

application = require('nez').plugin 'elix'

    #
    # daemon username
    # 

    daemon: 'daemon_name'


    #
    # socket.io, waiting for the brix
    #

    port: 12321


application 'Application Name', (node) ->

    node.link 'servers/ui'
    node.link 'servers/storage'
    node.start()

```
