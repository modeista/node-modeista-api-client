
module.exports = class ChannelMethods
  constructor:(@apiClient) ->
    throw new Error "apiClient parameter is required" unless @apiClient

  get: (channelId, cb = ->) =>
    @apiClient.get "/channels/#{channelId}", null, null, cb

