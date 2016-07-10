require 'sinatra'
require 'sinatra/reloader'
goal = rand(101)
get '/' do
  "The number is #{goal}!"
end
