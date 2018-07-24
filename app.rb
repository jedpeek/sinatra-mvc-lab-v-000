require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_input]
    p = PigLatinizer.new
    @pig_latinized_text = p.translate(text)

    erb :results
  end
end
