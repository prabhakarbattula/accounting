class ChangeColumnName < ActiveRecord::Migration
  def change
  	remove_column :cashbooks, :ledger_id
	remove_column :cashbooks, :debit_or_credit

	add_column :cashbooks, :debit, :integer
	add_column :cashbooks, :credit, :integer
  end
end
