
module.exports = class CommentMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  get: (commentId,options = {},cb = ->) =>
    return cb new Error("Parameter commentId required.") unless commentId
    @apiClient.get "/comments/#{commentId}", options.params, options.actAsActorId, cb

