# (C) 2012 Modeista, Inc.

_ = require 'underscore'

require('pkginfo')(module, 'version')

Client = require('./client')

module.exports =
  Client: Client
  client: (options = {}) ->
    new Client options.endpoint, options
