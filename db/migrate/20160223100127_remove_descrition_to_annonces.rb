class RemoveDescritionToAnnonces < ActiveRecord::Migration
  def change
    remove_column :annonces, :descrition, :text
  end
end
