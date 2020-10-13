class RemoveGroupIdColumnFromTransactions < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :group_id, :big_int
  end
end
