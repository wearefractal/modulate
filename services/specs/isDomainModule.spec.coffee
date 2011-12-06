#>> Setup

should = require 'should'
isDomainModule = require '../isDomainModule'

#>> Given a namespace "foo.bar"

ns = "foo.bar"

#>> Then

isDomainModule( ns ).should.be.true


#>> Given a namespace "foo"

ns = "foo"

#>> Then

isDomainModule( ns ).should.be.false
