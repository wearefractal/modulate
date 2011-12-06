require 'protege'
isDomainModule = require './isDomainModule'
getModulePath = require './getModulePath'

load = (domainRoot, namespace) ->

  if isDomainModule namespace
    return require( getModulePath domainRoot, namespace )
  else return require namespace


module.exports = load
