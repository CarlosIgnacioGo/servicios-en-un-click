class AddPhotoToService < ActiveRecord::Migration
  def change
    add_column :services, :photo, :string
  end
end
