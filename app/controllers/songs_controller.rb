class SongsController < ApplicationController

	def index
		@songs = Song.all.reverse_order
		@user = User.find(session[:user_id])
		@adds = Add.all
	end

	def create
		song = Song.new(song_params)
		if song.save
			redirect_to "/songs"
		else
			flash[:errors] = song.errors.full_messages
			redirect_to "/songs"
		end
	end

	def show
		#to display name and titke at top
		@song = Song.find(params[:id])
		#grabs all instances of song appearing in Add table
		@adds = Add.where(song_id: params[:id])
		puts @adds

	end


	def song_params
  		params.require(:song).permit(:artist, :title, :user_id)
  	end
end
