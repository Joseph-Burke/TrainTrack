class TransactionsController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @transactions = Transaction.where(user_id: session[:user_id])
    @total_transactions_value = @transactions.sum("amount")
  end

  def new
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.new
  end

  def create
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.new(transaction_params)
    @transaction.save
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @transaction = Transaction.find(params[:id])
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :group_id, :name, :amount)
  end
end
