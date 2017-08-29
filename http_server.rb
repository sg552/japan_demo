require 'sinatra'

get '/start' do
  result = `god start japan_demo`

  thread = Thread.new do
    sleep 10
    result = `god stop japan_demo`
    puts "== stopped" + result
  end

  "socket server started on 8888("  + result + ")"
end

get '/stop' do
  result = `god stop japan_demo`
  "socket server stopped.(" + result + ")"
end
