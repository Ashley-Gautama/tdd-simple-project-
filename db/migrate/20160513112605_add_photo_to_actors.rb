class AddPhotoToActors < ActiveRecord::Migration
  def change
    add_column :actors, :photo, :string
  end
end
