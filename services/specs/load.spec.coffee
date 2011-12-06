#>> Setup

should = require 'should'
load = require '../load'

#>> When I try to load a regular module

util = load '..', 'util'

#>> Then

util.should.have.property 'puts'


#>> When I try to load a domain module

bar = load __dirname, 'foo.bar'

#>> Then

bar.test().should.be.true


