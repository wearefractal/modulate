should = require 'should'
getAppRoot = require '../getAppRoot'

#>> Given a fake dir path

dirname = "/my/path/myapp/node_modules/modulate/"

#>> Then

getAppRoot( dirname ).should.equal "/my/path/myapp/"


