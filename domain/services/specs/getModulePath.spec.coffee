path = require 'path'
should = require 'should'
getModulePath = require '../getModulePath'
domainRoot = "/yourapp/domain"


#>> Given a service namespace

ns = "testModule.serviceName"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/testModule/services/serviceName"


#>> Given a Model namespace

ns = "testModule.ModelName"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/testModule/models/ModelName"


#>> Given an explicitly defined service or models

ns = "services.foo"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/services/foo"

#>> Given an explicitly defined service or models

ns = "models.Bar"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/models/Bar"


#>> Given config ns

ns = "testModule.config"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/testModule/config"

#>> Given an agent ns

ns = "testModule.agent"

#>> When I call getModulePath

modulePath = getModulePath domainRoot, ns 
modulePath.should.equal "/yourapp/domain/testModule/testModule.agent"

