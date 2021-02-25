require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end

    get '/new' do
        @name = params[:name]
        @breed = params[:breed]
        @age = params[:age]

        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])

        erb :display_puppy
    end

end
