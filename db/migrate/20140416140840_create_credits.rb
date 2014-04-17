class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name

      t.timestamps
    end
  end
end
