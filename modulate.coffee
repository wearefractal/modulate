require('coffee-script');
load = require './services/load'

Modulate =

  load: (namespace) -> load namespace


module.exports = Modulate
