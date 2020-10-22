require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]

    square = @num.to_i ** 2

    "#{square}"

  end

  get '/say/:number/:phrase' do

    sentence = ''
    @num = params[:number].to_i

    @num.times do 
      sentence += params[:phrase]
    end
    sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    
    "#{a} #{b} #{c} #{d} #{e}."

  end

  get '/:operation/:number1/:number2' do

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    x = ''

    case params[:operation]
    when 'add'
      x = (num1 + num2).to_s
    when 'subtract'
      x = (num1 - num2).to_s
    when 'multiply'
      x = (num1 * num2).to_s
    when 'divide'
      x = (num1 / num2).to_s
    end

    
  end
end