require "./config/environment"
require "./app/models/message"

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end
  get "/" do
    erb :index
  end
  get "/new_message" do
    message = Message.new({:user => params[:user], :content => params[:content]})
    message.save
    redirect "/"
  end
end