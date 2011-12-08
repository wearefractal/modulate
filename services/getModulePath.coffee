path = require 'path'
getArtifactType = require './getArtifactType'

getModulePath = (namespace) ->

  names    = namespace.split '.' 
  artifact = names.pop()
 
  ns = []
  ns.push name for name in names
  ns.push (getArtifactType artifact) + "s" # make plural
  ns.push artifact

  return path.join rzr.DOMAIN_ROOT, (ns.join '/')


module.exports = getModulePath
