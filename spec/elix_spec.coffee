require('nez').realize 'Elix', (Elix, test, context) -> 

    context 'in CONTEXT', (does) ->

        does 'an EXPECTATION', (done) ->

            true.should.equal true

            test done
