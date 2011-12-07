path = require 'path'

getAppRoot = (modulateRoot) ->

  # we make the assumption modulate is in node_modules 
  return path.join modulateRoot, "../../" # 3 up


module.exports = getAppRoot
