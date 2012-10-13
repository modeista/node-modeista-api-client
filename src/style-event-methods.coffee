# (C) 2012 Modeista, Inc.

module.exports = class StyleEventMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  get: (styleEventId, cb = ->) =>
    @apiClient.get "/style-events/#{styleEventId}", null, null, cb

