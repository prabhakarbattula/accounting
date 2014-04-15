class CreateCashbooks < ActiveRecord::Migration
  def change
    create_table :cashbooks do |t|
      t.date :date
      t.integer :ledger_id
      t.string :debit_or_credit
      t.float :amount

      t.timestamps
    end
  end
end
