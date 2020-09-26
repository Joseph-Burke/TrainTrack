class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :author_id, null: false, foreign_key: true
      t.string :name
      t.real :amount

      t.timestamps
    end
  end
end
