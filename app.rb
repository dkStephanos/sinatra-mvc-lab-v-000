require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new
    #@output = piglatinizer.to_pig_latin(@user_input)

    erb :piglatinized
  end
end
