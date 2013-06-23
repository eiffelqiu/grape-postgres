grape-datamapper-postgres
=========================

1: Start server

	$ rackup -E production -p 4567
	
2: Client api 

	$ curl -X POST -d 'usr=qiuhaifeng&content=leavemessage&device=32431242143211234&app=liuyaozhuanggua&ip=123.33.44.55' http://localhost:4567/posts   
