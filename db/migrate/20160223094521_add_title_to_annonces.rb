class AddTitleToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :title, :string
  end
end
