require 'grape'

module Mst
  class API < Grape::API
    version 'v1', using: :path
    format :json

    resource :orders do
      get '/remind' do 
        Order.first
      end
    end 
  end
end

