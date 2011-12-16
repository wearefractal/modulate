#>> Setup

path = require 'path'
should = require 'should'
load = require '../load'

domainRoot = path.resolve '.' # current dir (services/specs/)

#>> When I try to load a regular module

useless = load domainRoot, 'useless'

#>> Then

useless.should.have.property 'do'


#>> When I try to load a domain module

bar = load domainRoot, 'foo.bar'

#>> Then

bar.test().should.be.true
