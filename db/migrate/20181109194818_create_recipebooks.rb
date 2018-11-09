class CreateRecipebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :recipebooks do |t|
      t.string :meal
      t.text :ingredients

      t.timestamps
    end
  end
end
