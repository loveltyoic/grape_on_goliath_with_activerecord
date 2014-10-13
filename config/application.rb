require 'em-synchrony/activerecord'
require 'yaml'
require_relative '../app/models/order.rb'
require_relative '../app/api.rb'

db = YAML::load(File.open(File.expand_path('../database.yml', __FILE__)))[ENV['RACK_ENV']]
ActiveRecord::Base.establish_connection(db)