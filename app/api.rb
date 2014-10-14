require 'grape'

module Mst
  class API < Grape::API
    version 'v1', using: :path
    format :json

    resource :orders do
      get '/remind' do 
        Order.find(3)
      end
    end 
  end
end

