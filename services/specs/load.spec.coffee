#>> Setup

path = require 'path'
should = require 'should'
load = require '../load'

#>> When I try to load a regular module

useless = load 'useless'

#>> Then

useless.should.have.property 'do'


#>> Given a fake domain path

global.rzr = {}
rzr.DOMAIN_ROOT = path.resolve '.' # current dir (services/specs/)

#>> When I try to load a domain module

bar = load 'foo.bar'

#>> Then

bar.test().should.be.true
