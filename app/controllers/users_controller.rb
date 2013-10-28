class UsersController < ApplicationController
  	def new
  		@user = User.new
  	end

  	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to new_user_path, flash: { message: "Registration Successfull" }
		else
			redirect_to :back, flash: { errors: @user.errors.full_messages }
		end
	end
	
	private

	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :location)
	end

end