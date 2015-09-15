require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
	set :views, proc { File.join(root, '..', 'views') } 
  	get '/' do
  		erb :index
  	end

  	get '/new_game' do
  		@name = params[:name]
  		erb :new_game
  	end

  	get '/start' do
  		"hello world"
  		erb :start
  	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
