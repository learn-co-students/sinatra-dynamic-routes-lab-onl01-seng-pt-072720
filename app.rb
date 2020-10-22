require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  @reversename = params[:name].reverse
  "#{@reversename}"
  end

  get '/square/:number' do
    @squarenum = params[:number].to_i
    "#{@squarenum*@squarenum}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    # @multiplier = print(@phrase * @num)
    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "Say #{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
      case @operation
        when "subtract"
          (@number1 - @number2).to_s
        when "add"
          (@number1 + @number2).to_s
        when "multiply"
          (@number1 * @number2).to_s
        when "divide"
          (@number1 / @number2).to_s
      end
  end

end
