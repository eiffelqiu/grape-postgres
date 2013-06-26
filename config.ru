$:.unshift "./app"
require 'rubygems'
require 'sinatra'
require 'sequel'

$DB = Sequel.connect('jdbc:postgresql://localhost/notes' , :user=>'notes', :password=>'notes')
unless $DB.table_exists?(:posts)  
  $DB.create_table :posts do
    primary_key :id
    String :usr, :unique => false, :null => false
    String :device, :unique => false, :null => false
    String :content, :unique => false, :null => false
    String :app, :unique => false, :null => false
    String :ip, :unique => false, :null => false        
    Time :created_at
    index [:usr, :device, :content, :app, :ip]
  end
end

require 'models'
require 'api'

class Web < Sinatra::Base
  get '/' do
    "ok"
  end
end

run Rack::Cascade.new [API, Web]