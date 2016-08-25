class UsersController < ApplicationController
	def new
	end
	def show
		@user = User.find(params[:id])
	end
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user 
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to :back
		end
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:success] = "User successfully updated"
			redirect_to @user
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to :back
		end
	end
	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	end
end
