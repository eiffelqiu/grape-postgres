grape-postgres(Jruby)
=========================

1: Jruby

	$ rvm install jruby
	$ rvm use jruby --default

2: Postgresql

	$ createdb notes
	$ psql notes

	## in psql console

	$ notes=# create user notes with password 'notes';
	$ notes=# grant all privileges on database notes to notes;
	$ notes=# \q

3: Rubygems

	$ bundle install

4: Start server

	$ torquebox-lite
	
5: API

	$ curl -X POST -d 'usr=qiuhaifeng&content=leavemessage&device=32431242143211234&app=liuyaozhuanggua&ip=123.33.44.55' http://localhost:8080/posts   

