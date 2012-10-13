assert = require 'assert'
should = require 'should'
request = require 'request'

describe 'WHEN loading the module', ->
  index = require '../lib/index'

  it 'should exist', ->
    should.exist index