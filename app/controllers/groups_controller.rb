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
    group = Group.create!(group_params)
    group.avatar.attach(params[:group][:avatar])
    redirect_to group_path(group)
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @group = Group.find(params[:id])
    @transactions = @group.transactions
  end

  private

  def group_params
    params.require(:group).permit(:name, :avatar)
  end
end
