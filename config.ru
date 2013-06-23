#\ -s trinidad
# rack.version: ~>1.5.2

$:.unshift "./app"
require 'rubygems'
require 'data_mapper' 
require 'sinatra'

#DataMapper.setup(:default, 'postgres://eiffel:eiffel@127.0.0.1/notes')
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/notes.db")

require 'models'
require 'api'

class Web < Sinatra::Base
  get '/' do
    "ok"
  end
end

run Rack::Cascade.new [API, Web]