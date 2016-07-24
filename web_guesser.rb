require 'sinatra'
require 'sinatra/reloader'
number = rand(100)
#@guess = ""
@message = ""


get '/' do

  @guess = params["guess"].to_i if params["guess"]
  message = construct_message(@guess,number) if @guess
  erb :index, :locals => {:number => number, :guess => @guess,:message => message}

end

def construct_message(guess,number)
  if guess > number
    @message = "Too high!"
  elsif guess < number
    @message = "Too low!"
  elsif guess == number
    @message = "That's right!"
  end

  @message += "\n<br>The secret number is #{number}" if guess != number
end
