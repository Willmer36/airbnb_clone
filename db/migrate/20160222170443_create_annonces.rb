class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.text :descrition
      t.text :address
      t.integer :price
      t.integer :capacity
      t.date :date

      t.timestamps null: false
    end
  end
end
