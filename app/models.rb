require 'rubygems'
require 'sequel'

class Post < Sequel::Model
  Sequel.extension :pagination
end
