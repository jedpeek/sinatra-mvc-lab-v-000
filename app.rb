require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = params[:user_input]
    pl = PigLatinizer.new
    @pig_latinized_text = pl.translate(text)

    erb :results
  end
end
