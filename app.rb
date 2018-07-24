require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_input]

    @pig_latinized_text = PigLatinizer.new(text).translate

    erb :results
  end
end
