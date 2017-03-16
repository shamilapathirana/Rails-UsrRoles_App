class UsrUsersController < ApplicationController

  def index
    @users = UsrUser.all #show all users
  end

  def new
    @user = UsrUser.new
    @all_roles = UsrRole.all
    @user_roles = @user.usr_user_roles.build
  end

  def create
    @user = UsrUser.new(user_params)
    params[:usr_roles][:id].each do |role|
      if !role.empty?
        @user.usr_user_roles.build(:usr_role_id => role)
      end
    end
    if @user.save
      redirect_to home_path
    else
      render 'new'
    end
  end

  def show
    @user = UsrUser.find(params[:id])
    @roles = @user.usr_roles
  end

  private
  def user_params
    params.require(:usr_user).permit(:name)
  end

end
