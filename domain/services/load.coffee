path = require 'path'
isDomainModule = require './isDomainModule'
getModulePath = require './getModulePath'

load = (domainRoot, namespace) ->

  # all returns must return valid javascript because they will be injected into the compiled source
  if isDomainModule namespace
    return "require('#{getModulePath domainRoot, namespace}')"
  else
    nmPath = path.resolve domainRoot, '..', "node_modules", namespace
    if path.exists(nmPath)
      return "require('#{nmPath}')"
    else
      return "require('#{namespace}')"


module.exports = load
