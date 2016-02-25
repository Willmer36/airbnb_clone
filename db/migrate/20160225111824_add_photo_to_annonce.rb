class AddPhotoToAnnonce < ActiveRecord::Migration
  def change
    add_column :annonces, :photo, :string
  end
end
