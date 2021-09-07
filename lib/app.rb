require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'this is a secret'
end

get '/cat' do
    "<div style='border: dashed red'>
    <img src='https://i.imgur.com/jFaSxym.png/500/500'>
    </div>"
  end

# get '/cat' do
#   "<body>
#   <img style='border: dashed red' src='https://i.imgur.com/jFaSxym.png'>
#   </body>"
# end