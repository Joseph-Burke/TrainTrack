class GroupsController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @groups = Group.all.includes(avatar_attachment: [:blob])
  end

  def new
    redirect_to root_path if session[:user_id].nil?
    @group = Group.new
  end

  def create
    @group = Group.new(group_params.except(:avatar))
    @group.user_id = session[:user_id]

    if @group.save
      @group.avatar.attach(params[:group][:avatar])
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @group = Group.find(params[:id])
    @transactions = @group.transactions.includes(user: [avatar_attachment: :blob])
  end

  private

  def group_params
    params.require(:group).permit(:name, :avatar)
  end
end
