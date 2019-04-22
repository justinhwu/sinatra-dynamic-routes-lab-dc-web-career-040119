require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get '/square/:number' do
    @input = params[:number].to_i
    "#{@input*@input}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    print_phrase = ''
    @number.times do
      print_phrase += @phrase
    end
    print_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if  operation == "add"
      answer = (num1 + num2).to_s
    elsif operation == "subtract"
      answer = (num1 - num2).to_s
    elsif operation == "multiply"
      answer = (num1 * num2).to_s
    else
      answer = (num1 / num2).to_s
    end
  end

end
