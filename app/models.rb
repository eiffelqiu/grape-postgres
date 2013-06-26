# class Post
#   include DataMapper::Resource

#   property :id,         Serial 
#   property :usr, 		String,   :required => true
#   property :device, 	String,   :required => true
#   property :content,    Text,     :required => true 
#   property :app,    	String,   :required => true
#   property :ip,    		String,   :required => true 
#   property :created_at, DateTime, :required => false 
# end

# DataMapper.finalize
# DataMapper.auto_upgrade!

require 'rubygems'
require 'sequel'

############################################################
## Sequel Database Setup
############################################################

unless File.exist?("#{Dir.pwd}/notes.db") then
  $DB = Sequel.connect("jdbc:sqlite://#{Dir.pwd}/notes.db")
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
else
  $DB = Sequel.connect("jdbc:sqlite://#{Dir.pwd}/notes.db")
end

class Post < Sequel::Model
  Sequel.extension :pagination
end
