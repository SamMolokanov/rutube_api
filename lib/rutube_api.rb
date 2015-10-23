require 'rutube_api/version'
require File.expand_path('../rutube_api/configuration', __FILE__)
require File.expand_path('../rutube_api/api', __FILE__)
require File.expand_path('../rutube_api/client', __FILE__)

module RutubeApi
  extend Configuration

  # Alias for RutubeApi::Client.new
  #
  # @return [RutubeApi::Client]
  def self.client(options={})
    RutubeApi::Client.new(options)
  end

  # Delegate to RutubeApi::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to RutubeApi::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end
