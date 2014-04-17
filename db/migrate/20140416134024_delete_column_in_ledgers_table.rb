class DeleteColumnInLedgersTable < ActiveRecord::Migration
  def change
  	remove_column :ledgers, :debit_or_credit
  end
end
