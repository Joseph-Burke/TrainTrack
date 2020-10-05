class GroupsController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @groups = Group.all
  end

  def new
    redirect_to root_path if session[:user_id].nil?
    @group = Group.new
  end

  def create
    redirect_to root_path if session[:user_id].nil?
    @group = Group.new(group_params)
    @group.save
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
