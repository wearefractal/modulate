isDomainModule = require './isDomainModule'
getModulePath = require './getModulePath'

load = (namespace) ->

  if isDomainModule namespace
    return require( getModulePath namespace )
  else return require namespace


module.exports = load
