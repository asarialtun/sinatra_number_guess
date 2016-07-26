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
    if guess-number >= 5
      @message = "Way too high"
    else
      @message = "Too high!"
    end
    @message += "\n<br>The secret number is #{number}"
  elsif guess < number
    if number - guess >= 5
      @message = "Way too low"
    else
      @message = "Too low!"
    end
    @message += "\n<br>The secret number is #{number}"
  elsif guess == number
    @message = "That's right!"
  end


end
