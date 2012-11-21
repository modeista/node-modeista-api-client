
module.exports = class ChannelMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  # Basics

  all: (params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/channels", params, actAsActorId, cb

  get: (channelId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/channels/#{channelId}", params, actAsActorId, cb

  post: (data = {},actAsActorId = null, cb = ->) =>
    @apiClient.post "/channels", data, actAsActorId, cb

  patch: (channelId,data = {}, actAsActorId = null,cb = ->) =>
    @apiClient.patch "/channels/#{channelId}", data, actAsActorId, cb

  delete: (channelId, actAsActorId = null,cb = ->) =>
    @apiClient.delete "/channels/#{channelId}", null, actAsActorId, cb

  # Channel Folloers

  getFollowers: (channelId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/channels/#{channelId}/followers", params, actAsActorId, cb

  putFollower: (channelId,followerId,actAsActorId = null, cb = ->) =>
    @apiClient.put "/channels/#{channelId}/followers/#{followerId}", null, actAsActorId, cb

  deleteFollower: (channelId,followerId,actAsActorId = null, cb = ->) =>
    @apiClient.delete "/channels/#{channelId}/followers/#{followerId}", null, actAsActorId, cb

  # Style Events related to that channel
  allStyleEvents: (channelId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/channels/#{channelId}/style-events", params, actAsActorId, cb

  postStyleEvents: (channelId,data = {},actAsActorId = null, cb = ->) =>
    @apiClient.post "/channels/#{channelId}/style-events", data, actAsActorId, cb

  getStyleEvent: (channelId,styleEventId,params = {},actAsActorId = null, cb = ->) =>
    @apiClient.get "/channels/#{channelId}/style-events/#{styleEventId}", params, actAsActorId, cb
  patchStyleEvent: (channelId,styleEventId,data = {},actAsActorId = null, cb = ->) =>
    @apiClient.patch "/channels/#{channelId}/style-events/#{styleEventId}", data, actAsActorId, cb
  putStyleEvent: (channelId,styleEventId,data = {},actAsActorId = null, cb = ->) =>
    @apiClient.put "/channels/#{channelId}/style-events/#{styleEventId}", data, actAsActorId, cb
  deleteStyleEvent: (channelId,styleEventId,actAsActorId = null, cb = ->) =>
    @apiClient.delete "/channels/#{channelId}/style-events/#{styleEventId}", null, actAsActorId, cb

  postStyleEventsForConnections: (channelId,hashes = [],actAsActorId = null, cb = ->) =>
    @apiClient.post "/channels/#{channelId}/style-events-for-connections", hashes : hashes, actAsActorId, cb
