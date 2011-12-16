#>> Setup

path = require 'path'
should = require 'should'

#>> Given modulate with a mock dir

dir = path.join __dirname, "domain"
modulate = require('../modulate') { domainRoot: dir }

#>> When I load a regular module

useless = modulate.load 'useless'

#>> Then

useless.should.be.ok
useless.should.have.property "do"


#>> When I try to load a domain module

bar = modulate.load 'foo.bar'

#>> Then

bar.test().should.be.true
