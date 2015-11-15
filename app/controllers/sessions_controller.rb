class SessionsController < ApplicationController
	def index
		render "splash"
	end

	def log
		render "loggie"
	end

	def reg
		render "reggie"
	end

	def create
		user = User.find_by_email(params[:email])

		# if user exists and the password matches:
		if user && user.authenticate(params[:password])
			# saves user id (gotten from find_by_email) in the browser cookie
			session[:user_id] = user.id
			flash[:success] = "Welcome to your page!"
			redirect_to "/songs"
		else
			flash[:errors] = "Email and/or Password don't match. Please try again."
			redirect_to "/log"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/main'
	end

end
