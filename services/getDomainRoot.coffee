path = require 'path'
config = require '../config'

getDomainRoot = (appRoot) ->

  if config.domainDir?
    return (path.join appRoot, config.domainDir) + "/"
  else return appRoot


module.exports = getDomainRoot
