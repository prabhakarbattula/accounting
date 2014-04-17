class AddDebitOrCreditToLedgers < ActiveRecord::Migration
  def change
    add_column :ledgers, :debit_or_credit, :string
  end
end
