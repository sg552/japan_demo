require 'socket'

s= TCPSocket.open('localhost', 8888)

while line = s.gets
  puts line.chop
end

s.close
