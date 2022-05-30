require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is a banana'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  puts params
  @name = params[:name]
  erb :index
end

