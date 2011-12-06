require('coffee-script');
path = require 'path'
getAppRoot = require './services/getAppRoot'
getDomainRoot = require './services/getDomainRoot'
load = require './services/load'

class Modulate
  constructor: ->

    @appRoot    = getAppRoot __dirname
    @domainRoot = getDomainRoot @appRoot

  load: (namespace) -> load @domainRoot, namespace


module.exports = new Modulate()


###   
    # we make the assumption modulate is in node_modules
    @appRoot = path.join __dirname, ".." # one up

    @domainRoot = @appRoot + "/"
    if config.domainDir? then @domainRoot += "#{config.domainDir}/"

