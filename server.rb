require "bundler/setup"
require 'goliath'
require_relative 'config/application.rb'

class Server < Goliath::API
  def response(env)
    Mst::API.call(env)
  end
end