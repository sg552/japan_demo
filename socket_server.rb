require 'socket'
server = TCPServer.open(8888)
loop do
  client = server.accept
  client.puts "ok"
  client.close
end
