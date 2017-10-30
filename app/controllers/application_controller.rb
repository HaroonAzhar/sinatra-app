class ApplicationController < Sinatra::Base
    register Sinatra::ActiveRecordExtension
 
 
    configure do
      enable :sessions
      set :session_secret, "my_application_secret"
      set :views, Proc.new { File.join(root, "../views/") }
      set :public_folder, 'public'      
    end
  
    get '/' do
      erb :index
    end
end