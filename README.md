grape-postgres
=========================


1: Prepare for postgresql database

	$ createdb notes
	$ psql notes

	## in psql console

	$ notes=# create user notes with password 'notes';
	$ notes=# grant all privileges on database notes to notes;
	$ notes=# \q

1: Start server

	$ torquebox-lite
	
2: Client api 

	$ curl -X POST -d 'usr=qiuhaifeng&content=leavemessage&device=32431242143211234&app=liuyaozhuanggua&ip=123.33.44.55' http://localhost:8080/posts   

