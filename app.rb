require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @full_phrase_array = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @full_phrase_array << @phrase
    end
    @full_phrase_array.join("")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    @solution = @num1 + @num2 if @operation == "add"
    @solution = @num1 - @num2 if @operation == "subtract"
    @solution = @num1 * @num2 if @operation == "multiply"
    @solution = @num1 / @num2 if @operation == "divide"

    @solution.to_s
  end

end