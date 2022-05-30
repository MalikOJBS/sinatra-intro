require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is a banana'
end

get '/cat' do
  "<div style='border: 5px solid black'>
  <img src='http://placekitten.com/500/500'>
</div>"
end
