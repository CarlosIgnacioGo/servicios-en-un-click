class AddTuesdayToService < ActiveRecord::Migration
  def change
    add_column :services, :tuesday, :boolean
  end
end
