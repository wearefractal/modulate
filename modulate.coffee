require('coffee-script');
path = require 'path'
load = require './services/load'

appRoot ?= path.join __dirname, "../.."
config = require( path.join appRoot, "config/config" )
domainRoot = path.join appRoot, config.domainDir


Modulate =
    
  load: (namespace) -> load domainRoot, namespace


module.exports = Modulate
