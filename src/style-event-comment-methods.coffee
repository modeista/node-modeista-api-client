
module.exports = class StyleEventCommentMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  all: (styleEventId,options = {},cb = ->) =>
    return cb new Error("Parameter styleEventId required.") unless styleEventId
    @apiClient.get "/style-events/#{styleEventId}/comments", options.params, options.actAsActorId, cb

  post: (styleEventId,data = {},options = {},cb = ->) =>
    return cb new Error("Parameter styleEventId required.") unless styleEventId
    return cb new Error("Parameter options.actAsActorId required.") unless options.actAsActorId

    @apiClient.post "/style-events/#{styleEventId}/comments", data, options.actAsActorId, cb

