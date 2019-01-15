require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
    @reverse=@params[:String].reverse
  end

  get '/friends' do
    # Write your code here!
    @friends=@params['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
