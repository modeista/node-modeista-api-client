# (C) 2012 Modeista, Inc.

module.exports = class StylistMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  all: (params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/stylists", params, actAsActorId, cb

  get: (stylistId, params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/stylists/#{stylistId}", params, actAsActorId, cb

  post: (data = {},actAsActorId = null, cb = ->) =>
    @apiClient.post "/stylists", data, actAsActorId, cb

  patch: (stylistId,data = {}, actAsActorId = null,cb = ->) =>
    @apiClient.patch "/stylists/#{stylistId}", data, actAsActorId, cb

  put: (stylistId,data = {}, actAsActorId = null,cb = ->) =>
    @apiClient.put "/stylists/#{stylistId}", data, actAsActorId, cb

  delete: (stylistId, actAsActorId = null,cb = ->) =>
    @apiClient.delete "/stylists/#{stylistId}", null, actAsActorId, cb

