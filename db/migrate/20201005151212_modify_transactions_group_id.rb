class ModifyTransactionsGroupId < ActiveRecord::Migration[6.0]
  def change
    change_column_null :transactions, :group_id, true
  end
end
