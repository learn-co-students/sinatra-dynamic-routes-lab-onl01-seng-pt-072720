require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do 
    num = params[:number].to_i 
    answer = num * num
    answer.to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] *  params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."  
  end

  get '/:operation/:number1/:number2' do
    x = params[:number1].to_i
    y = params[:number2].to_i
   
    if params[:operation] == "add"
     sum = x+y
    elsif params[:operation] == "subtract" 
      sum = x-y
    elsif params[:operation] == "multiply"
      sum = x*y
    elsif params[:operation] == "divide"
      sum = x/y
    end
    
    sum.to_s
  end

end