class UsersController < ApplicationController
  def show
    if !current_user || current_user.id != params[:id].to_i
      flash.notice = "You must be signed in to do that"
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "User or Password does not exist"
      render :new
    end
  end

  def delete
    reset_session
  end

  private
    def user_params
      params.require(:user).permit(:full_name, :email, :password)
    end

end
