should = require 'should'
getDomainRoot = require '../getDomainRoot'

#>> Given a fake appRoot

appRoot = "/my/path/myapp/"

#>> Then

path = getDomainRoot appRoot
path.should.equal "/my/path/myapp/domain/"


