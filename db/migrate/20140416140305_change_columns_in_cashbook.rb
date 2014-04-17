class ChangeColumnsInCashbook < ActiveRecord::Migration
  def change
  	rename_column :cashbooks, :debit, :debit_id
  	rename_column :cashbooks, :credit, :credit_id  	

  	rename_table :ledgers, :debits
  end
end
