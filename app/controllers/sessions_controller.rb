class SessionsController < ApplicationController

	def new
		# used for sign in page
	end

	def create
		# used to create a session
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			# Sign in the user to his profile page which is the users show action
			sign_in user
			redirect_to user
		else
			# Create an error message and re render sign in page
			flash.now[:error] = "Invalid email/password combination." 
			render 'new'
		end
	end

	def destroy
		# used for logging out action
		sign_out
		redirect_to root_path
	end
end
