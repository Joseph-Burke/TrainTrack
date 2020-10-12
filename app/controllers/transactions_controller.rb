class TransactionsController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @transactions = Transaction.where(user_id: session[:user_id]).includes(groups: [avatar_attachment: :blob])
    @total_transactions_value = @transactions.sum('amount')
  end

  def new
    redirect_to root_path if session[:user_id].nil?
    user = User.find(session[:user_id])
    @transaction = user.transactions.build
    @groups = Group.all
  end

  def create
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.new(transaction_params.except(:group_ids))
    @transaction.user_id = session[:user_id]
    @transaction.save
    params[:transaction][:group_ids].select{ |n| !n.to_i.zero?}.each do |id| 
      GroupTransaction.create(group_id: id.to_i, transaction_id: @transaction.id )
    end
    redirect_to transaction_path(@transaction)
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.find(params[:id])
  end

  def external_transactions
    @transactions = GroupTransaction.where(group_id: nil).map(&:owner).select { |trans| !trans.nil? && trans.user_id == session[:user_id] }
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :description)
  end
end
