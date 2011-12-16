require('coffee-script');
path = require 'path'
load = require './services/load'

Modulate = ->

  appRoot = path.join __dirname, "../.."
  config  = require( path.join appRoot, "config/config" )

  domainRoot = path.join appRoot, config.domainDir
    
  load: (namespace) -> load domainRoot, namespace


module.exports = Modulate()
