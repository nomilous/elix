module.exports = Protocols = 

    bind: (receive, send) -> 

        receive 'event:connect', (payload) -> 

            console.log payload
