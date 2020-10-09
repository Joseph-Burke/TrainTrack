class TransactionsController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @transactions = Transaction.where(user_id: session[:user_id])
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
    @transaction = User.find(session[:user_id]).transactions.build(transaction_params)
    @transaction.save
    redirect_to transaction_path(@transaction)
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.find(params[:id])
  end

  def external_transactions
    @transactions = GroupTransaction.where(group_id: nil, transaction_id: 1).map(&:owner)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:group_id, :name, :amount)
  end
end
