require 'sinatra'
require 'socket'

set :bind, '0.0.0.0'

get '/hello-world' do
  'Hello world from k8s with a change'
end

post '/add' do
  File.open('log.txt', 'a') { |file| file.write(params['content'] + "\n") }
  200
end

get '/list' do
  content = ''
  File.open('log.txt', 'r') do |f|
    f.each_line do |line|
      content << line + '<br/>'
    end
  end
  content
end
