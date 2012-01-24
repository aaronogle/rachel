import socket, sys

host = sys.argv[1]
command = sys.argv[2]


s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
s.connect( (host, 1234) )
sslSocket = socket.ssl(s)
sslSocket.write(command)

s.close



