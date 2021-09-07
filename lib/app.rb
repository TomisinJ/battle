require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'this is a secret'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
