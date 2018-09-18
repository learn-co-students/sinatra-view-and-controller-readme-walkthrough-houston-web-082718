require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    og = params[:string]
    @new_string = og.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Leah Severin', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
 
    erb :friends
  end
end