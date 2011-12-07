require('coffee-script');
getAppRoot    = require './services/getAppRoot'
getDomainRoot = require './services/getDomainRoot'
load          = require './services/load'

class Modulate
  constructor: ->

    @appRoot    = getAppRoot __dirname
    @domainRoot = getDomainRoot @appRoot

  load: (namespace) -> load @domainRoot, namespace


module.exports = new Modulate()
