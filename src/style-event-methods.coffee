# (C) 2012 Modeista, Inc.

module.exports = class StyleEventMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  all: (params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/style-events", params, actAsActorId, cb

  get: (styleEventId, params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/style-events/#{styleEventId}", params, actAsActorId, cb

  post: (data = {},actAsActorId = null, cb = ->) =>
    @apiClient.post "/style-events", data, actAsActorId, cb

  postImport: (data = {},actAsActorId = null, cb = ->) =>
    @apiClient.post "/style-events/import", data, actAsActorId, cb

  patch: (styleEventId,data = {}, actAsActorId = null,cb = ->) =>
    @apiClient.patch "/style-events/#{styleEventId}", data, actAsActorId, cb

  put: (styleEventId,data = {}, actAsActorId = null,cb = ->) =>
    @apiClient.put "/style-events/#{styleEventId}", data, actAsActorId, cb

  delete: (styleEventId, actAsActorId = null,cb = ->) =>
    @apiClient.delete "/style-events/#{styleEventId}", null, actAsActorId, cb



