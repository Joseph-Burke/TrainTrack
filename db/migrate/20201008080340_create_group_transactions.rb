class CreateGroupTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :group_transactions do |t|
      t.integer "group_id"
      t.integer "transaction_id"
      t.timestamps
    end
  end
end
