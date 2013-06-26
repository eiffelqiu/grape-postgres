require 'rubygems'
require 'yaml'
require 'sequel'

if File.exist?("#{Dir.pwd}/config/database.yml") then
  config = YAML.load_file("#{Dir.pwd}/config/database.yml")
  $DB = Sequel.connect("jdbc:postgresql://localhost/#{config['database']}" , :user=>"#{config['user']}", :password=>"#{config['password']}")
end