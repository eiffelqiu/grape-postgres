source 'http://ruby.taobao.org'
source 'http://rubygems.org'
# source 'http://gems.github.com'
source 'http://torquebox.org/rubygems'

gem 'torquebox-server', '2.3.2'

gem 'grape'
gem 'datamapper', '>= 1.2.0'
gem 'bundler'
#gem 'thin'
gem 'sinatra'
gem 'sequel'
#gem 'puma'
#gem 'rainbows'
#gem 'sqlite3'
gem 'trinidad', '1.4.5'
#gem 'activerecord-jdbc-adapter'
# SQLite JDBC adapter
# group :production do 
# 	gem 'pg'
# 	gem 'jdbc-postgres'
# 	gem 'dm-postgres-adapter'
# end

#gem 'sqlite3'
gem 'jdbc-sqlite3', :require => false
#gem 'dm-sqlite-adapter'	

group :deploy do
	gem "net-ssh", :require => "net/ssh" 
	gem "net-scp", :require => "net/scp" 
	gem "warbler", "1.3.8"
end

#gem 'trinidad_diagnostics_extension'