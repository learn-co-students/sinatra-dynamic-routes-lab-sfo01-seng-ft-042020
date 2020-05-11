require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @user_name = @name.split("").reverse().join("")
    "#{@user_name}"
  end
  get "/square/:number" do
    @num = params[:number]
    
    "#{params[:number].to_i*params[:number].to_i}"
  end
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    str = @phrase
    str * @num
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  get "/:operation/:number1/:number2" do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation]

    case @operation
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end 
  end
end