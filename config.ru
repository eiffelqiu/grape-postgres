$:.unshift "./app"

require 'sinatra'
require 'setup'

require 'models'
require 'api'

run Rack::Cascade.new [API, Web]