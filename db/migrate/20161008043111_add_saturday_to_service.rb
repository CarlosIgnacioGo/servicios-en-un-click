class AddSaturdayToService < ActiveRecord::Migration
  def change
    add_column :services, :saturday, :boolean
  end
end
