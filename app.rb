require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @username = params[:name]
    "Goodbye, #{@username}."
  end# Code your final two routes here:

  get "/multiply/:num1/:num2" do
  @number1 = params[:num1].to_i
  @number2 = params[:num2].to_i
  "#{@number1 * @number2}"
  end
end
