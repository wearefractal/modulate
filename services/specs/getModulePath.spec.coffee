path = require 'path'
should = require 'should'
getModulePath = require '../getModulePath'

#>> Given a service namespace

global.rzr = {}
rzr.DOMAIN_ROOT = "/yourapp/domain"


ns = "testModule.serviceName"

#>> When I call loadDomain Module

modulePath = getModulePath ns 
modulePath.should.equal "/yourapp/domain/testModule/services/serviceName"

#>> Given a Model namespace

ns = "testModule.ModelName"

#>> When I call loadDomain Module

modulePath = getModulePath ns 
modulePath.should.equal "/yourapp/domain/testModule/models/ModelName"
