#>> Setup

path = require 'path'
should = require 'should'
modulate = require '../modulate'

#>> When I load a regular module

useless = modulate.load 'useless'

#>> Then

useless.should.be.ok
useless.should.have.property "do"


#>> Given a fake domain path

global.rzr = {}
rzr.DOMAIN_ROOT = path.resolve './services/specs/' 

#>> When I try to load a domain module

bar = modulate.load 'foo.bar'

#>> Then

bar.test().should.be.true
