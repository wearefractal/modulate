should = require 'should'
isUpcase = require '../isUpcase'

#>> Given an uppercase word

word = "Word"

#>> Then

isUpcase( word ).should.be.true

#>> Given a lowercase word

word = "word"

#>> Then

isUpcase( word ).should.be.false


