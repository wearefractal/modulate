should = require 'should'
getArtifactType = require '../getArtifactType'

#>> Given a Model Name

model = "CoolModel"

#>> Then

getArtifactType( model ).should.equal "model"


#>> Given a Service Name

model = "myService"

#>> Then

getArtifactType( model ).should.equal "service"

