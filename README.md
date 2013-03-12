elix
====

Crafts applications...<br /><br />
from [Brix](https://github.com/nomilous/brix)


### Current Version

0.0.1 (pre-release)


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


    #
    # TLS
    # http://nodejs.org/api/tls.html
    # 

    key: '/path/to/key.pem'
    cert: '/path/to/cert.pem'



application 'Application Name', (node) ->

    node.link 'servers/ui'
    node.link 'servers/storage'
    

```
