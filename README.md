elix
====

Application Root Node


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

### `live/root`

```coffee
#!/usr/bin/env coffee

#
# Application Root Node
#

application = require('nez').plugin 'elix'

    #
    # daemon username
    # 

    daemon: 'daemon'


    #
    # socket.io listening at port
    #

    port: 12321


application 'Application Name', (node) ->

    node.link 'servers/ui'
    node.link 'servers/storage'
    node.start()

```
