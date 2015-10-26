class AddsController < ApplicationController

	def create
		@user = User.find(session[:user_id])
		@add = Add.create(add_params)
		redirect_to "/songs"
	end

	
	def add_params
		params.require(:add).permit(:user_id, :song_id)
	end

end
