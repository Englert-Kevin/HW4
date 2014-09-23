class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id]) if params[:id]
	end

	def destroy
		@user = User.find(params[:id])

		if @user.destroy
			flash[:notice] = 'User successfully deleted.'
		else
			flash[:alert] = 'User delete not successful.'
		end

		redirect_to users_path
	end

end