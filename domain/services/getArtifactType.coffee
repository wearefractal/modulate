isUpcase = require './isUpcase'

getArtifactType = (artifact) -> 

  if isUpcase artifact then return "model"
  else return "service"


module.exports = getArtifactType
