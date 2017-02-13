Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect
Promise= require('bluebird')

helper = new Helper('../src/google-tts.coffee')

describe 'google-tts', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'return tts url', ->
    @room.user.say('alice', '@hubot say hello en').then =>
      yield new Promise.delay(100)
      expect(@room.messages).to.eql [
        ['alice', '@hubot say hello en']
        ['hubot', '@alice https://translate.google.com/translate_tts?ie=UTF-8&q=hello&tl=en&total=1&idx=0&textlen=5&tk=975824.568916&client=t&prev=input&ttsspeed=1']
      ]

