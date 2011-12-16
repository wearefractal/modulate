isUpcase = (word) ->

  firstChar = word[0]
  return firstChar is firstChar.toUpperCase()


module.exports = isUpcase
