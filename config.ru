$:.unshift "./app"

require 'sinatra'
require 'setup'

require 'models'
require 'api'

class Web < Sinatra::Base
  get '/' do
    "ok"
  end
end

run Rack::Cascade.new [API, Web]