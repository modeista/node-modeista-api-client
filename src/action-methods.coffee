
module.exports = class ActionMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  setupNewUser: (actAsActorId = null, cb = ->) =>
    @apiClient.post "/actions/setup-new-user", {},actAsActorId, cb
