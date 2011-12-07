should = require 'should'
getModulePath = require '../getModulePath'

#>> Given a service namespace

ns = "testModule.serviceName"

#>> When I call loadDomain Module

modulePath = getModulePath '..', ns 
modulePath.should.equal "../testModule/services/serviceName"


#>> Given a Model namespace

ns = "testModule.ModelName"

#>> When I call loadDomain Module

modulePath = getModulePath '..', ns 
modulePath.should.equal "../testModule/models/ModelName"

