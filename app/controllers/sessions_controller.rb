class SessionsController < ApplicationController
	def index
		render "main"
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
			flash[:errors] = "Something's wroooong...."
			redirect_to "/main"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/main'
	end

end
