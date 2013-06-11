class Post
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :title,      String, :required => true    # A varchar type string, for short strings
  property :body,       Text, :required => true       # A text block, for longer string data.
  property :created_at, DateTime, :required => false  # A DateTime, for any date you might like.
end

DataMapper.finalize