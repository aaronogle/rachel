#Client script to recieve commands
import socket
import subprocess
import threading
from OpenSSL import SSL

class myThread (threading.Thread):
	def __init__(self, sock):
	    self.sock = sock
	    threading.Thread.__init__(self)
            
	    
	def run(self):
	    str = self.sock.recv(100)
	    print "starting program.." + str
	    self.sock.close()
	    subprocess.call([str])

threads = []

context = SSL.Context(SSL.SSLv23_METHOD)
context.use_privatekey_file('key')
context.use_certificate_file('cert')

s = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
s = SSL.Connection(context, s)
s.bind( ('', 1234) )
s.listen( 5 )


while 1:
	sock, (remhost, remport) = s.accept()
	
	threads.append( myThread(sock).start() )

