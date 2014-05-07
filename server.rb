require 'sinatra'
require './expense'

expenses = []

get '/' do 
	
	end
	erb :index
end

get '/new' do
	
	erb :new
end

post '/save' do
	@expense = Expense.new params[:id], params[:name], params[:price]
	expenses << @expense
	redirect to '/'
end

get '/show/:id' do
	@id = params[:id]
	erb :show
end
