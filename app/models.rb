class Post
  include DataMapper::Resource

  property :id,         Serial 
  property :usr, 		String,   :required => true
  property :device, 	String,   :required => true
  property :content,    Text,     :required => true 
  property :app,    	String,   :required => true
  property :ip,    		String,   :required => true 
  property :created_at, DateTime, :required => false 
end

DataMapper.finalize
DataMapper.auto_upgrade!