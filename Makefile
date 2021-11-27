all: udpclient udpserver

udpclient: udp_client.c common.h weather.h
	gcc -Wall udp_client.c -o udpclient
 
udpserver: udp_server.c common.h weather.h sock_ipv_4.h sock_ipv_6.h
	gcc -Wall udp_server.c weather.c sock_ipv_4.c sock_ipv_6.c -o udpserver

clean: 
	rm udpclient udpserver
 
