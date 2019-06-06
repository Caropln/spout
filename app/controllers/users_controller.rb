class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user), notice: 'Your profile has been updated successfully.'
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :address, :tel, :birth_date, :avatar)
  end
end
