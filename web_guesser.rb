require 'sinatra'
require 'sinatra/reloader'
goal = rand(101)
get '/' do
  erb :index, :locals => {:goal => goal}
end
