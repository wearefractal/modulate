path = require 'path'
isDomainModule = require './isDomainModule'
getModulePath = require './getModulePath'

load = (domainRoot, namespace) ->

  if isDomainModule namespace
    return require( getModulePath domainRoot, namespace )
  else 
    nmPath = path.resolve domainRoot, '..', "node_modules", namespace
    try
      mod = require nmPath
      return mod
    catch e
      return require namespace      


module.exports = load
