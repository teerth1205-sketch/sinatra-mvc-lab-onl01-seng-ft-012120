require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @phrase = Piglatinize.new
     @phrase.piglatinize(params["user_phrase"])
    erb :pig
  end 
end