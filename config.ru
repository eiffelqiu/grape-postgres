$:.unshift "./app"
require 'rubygems'
require 'data_mapper' 

DataMapper.setup(:default, 'postgres://eiffel:eiffel@127.0.0.1/notes')

require 'models'
require 'api'

run API