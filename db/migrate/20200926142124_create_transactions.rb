class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true, column: :author_id
      t.references :group, null: false, foreign_key: true, column: :group_id
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
