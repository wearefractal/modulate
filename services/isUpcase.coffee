require 'protege'
# factor out to protege

isUpcase = (word) ->

  firstChar = word[0]
  return firstChar is firstChar.upcase()


module.exports = isUpcase
