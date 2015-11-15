class UsersController < ApplicationController

	def create

		user = User.create(user_params)

		if  user.errors.full_messages.any?
			flash[:errors] = user.errors.full_messages
			redirect_to "/reg"

		else
			session[:user_id] = user.id
			redirect_to "/songs"
		end

	end

	def show
		@user = User.find(params[:id])
		#find all songs a particular user added
		@adds = @user.songs_added
		@songs = Add.all
	end



	private
		def user_params
			params.require(:user).permit(:name, :email, :password)
		end	
	
end
