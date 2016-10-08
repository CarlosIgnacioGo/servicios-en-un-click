class AddWednesdayToService < ActiveRecord::Migration
  def change
    add_column :services, :wednesday, :boolean
  end
end
