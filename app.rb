require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @pig_latinized_text = pl.translate(params[:user_input])
    erb :results
  end
end
