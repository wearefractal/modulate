path = require 'path'
load = require './services/load'

Modulate = ({moduleRoot, domainRoot}) ->

  modulate =
    load: (namespace) -> load domainRoot, namespace

module.exports = Modulate

