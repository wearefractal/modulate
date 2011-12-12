path = require 'path'
getArtifactType = require './getArtifactType'

getModulePath = (domainRoot, namespace) ->

  names    = namespace.split '.' 
  module   = names[0]
  artifact = names.pop()  

  ns = []

  if module is "services" or module is "models"
    ns.push module
    ns.push artifact
  
  else   
    ns.push name for name in names
    ns.push (getArtifactType artifact) + "s" # make plural
    ns.push artifact

  return path.join domainRoot, (ns.join '/')


module.exports = getModulePath
