class CreateLedgers < ActiveRecord::Migration
  def change
    create_table :ledgers do |t|
      t.string :name

      t.timestamps
    end
  end
end
