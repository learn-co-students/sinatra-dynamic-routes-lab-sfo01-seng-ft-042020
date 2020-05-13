require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = (@number*@number)
    "#{square}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    conv = {:add => "+", :subtract => "-", :divide => "/", :multiply => "*"}
    "#{params[:number1].to_i.send(conv[params[:operation].to_sym], params[:number2].to_i)}"
  end

end