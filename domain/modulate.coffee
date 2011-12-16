path = require 'path'
load = require './services/load'

Modulate = ({appRoot, domainDir}) ->

  domainDir ?= 'domain'  
  domainRoot = path.join appRoot, domainDir

  modulate =   
    load: (namespace) -> load domainRoot, namespace


module.exports = Modulate

