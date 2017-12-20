class UsersController < ApplicationController
  def show
    logged_in?
    @user_favorites = UserFavorite.all.where(user_id: current_user.id).includes(:players)
    if params[:sort] == "fantasy_team"
      @players = current_user.players.order("fantasy_team_id DESC").paginate(:page => params[:page], :per_page => 30).includes(:fantasy_team)
    else
      @players = current_user.players.paginate(:page => params[:page], :per_page => 30).includes(:fantasy_team)
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
