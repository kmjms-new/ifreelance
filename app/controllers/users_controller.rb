class UsersController < ApplicationController
    before_action :authenticate_user!
    layout "dashboard"
    def index
    if params[:role]=="All"
      @users = User.all
    else
      @users = User.where(role: params[:role])
    end
  end
  def show
    @users = User.find(params[:id])
  end
  def edit
    
  end
end
