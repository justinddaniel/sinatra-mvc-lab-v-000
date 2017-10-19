require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    phrase_from_user = params[:user_phrase]
    @phrase_from_user = Piglatinizer.new(phrase_from_user)

    erb :piglatinize
  end

end
