require 'em-synchrony/activerecord'
require 'yaml'
Dir.glob(File.expand_path('../../app/models/*.rb', __FILE__)) do |file|
  require file
end

require_relative '../app/api.rb'
ENV['RACK_ENV'] ||= 'development'

db = YAML::load(File.open(File.expand_path('../database.yml', __FILE__)))[ENV['RACK_ENV']]
ActiveRecord::Base.establish_connection(db)