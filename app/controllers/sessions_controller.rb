class SessionsController < ApplicationController

	def new
	end
	
	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			# Sign in and redirect to user show page
		else
			# flash an error message and re-render the signin form
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end
	
	def destroy
	end
	
end
