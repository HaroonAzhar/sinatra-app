class UsersController < ApplicationController
	
    post '/users/create' do
    	
   
	  puts "in the post create action"
     erb  :'/users/show.erb'
 end

	private
	
end