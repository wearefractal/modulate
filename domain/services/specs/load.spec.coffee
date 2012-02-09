#>> Setup

path = require 'path'
should = require 'should'
load = require '../load'

domainRoot = path.resolve '.' # current dir (services/specs/)

#>> When I try to load a regular module

useless = load domainRoot, 'useless'

#>> Then

useless.should.equal "require('useless')"


#>> When I try to load a domain module

bar = load domainRoot, 'foo.bar'

#>> Then

# check vs expected string
bar.should.equal "require('#{domainRoot}/foo/services/bar')"

# eval the result
eval(bar).test().should.be.true
