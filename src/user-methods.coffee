module.exports = class UserMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  getStyleEvents: (userId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/users/#{userId}/style-events", params, actAsActorId, cb

  getStats: (userId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/users/#{userId}/stats", params, actAsActorId, cb

