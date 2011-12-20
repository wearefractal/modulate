path = require 'path'
getArtifactType = require './getArtifactType'

getModulePath = (domainRoot, namespace) ->

  names    = namespace.split '.' 
  module   = names[0]
  artifact = names.pop()  

  ns = []

  switch module
    when 'services', 'models'      
      ns.push module
      ns.push artifact
    else
      switch artifact
        when 'config'
          ns.push module
          ns.push artifact
        when 'agent'
          ns.push module
          ns.push "#{module}.agent"  
        else   
          ns.push name for name in names
          ns.push (getArtifactType artifact) + "s" # make plural
          ns.push artifact


  return path.join domainRoot, (ns.join '/')


module.exports = getModulePath
