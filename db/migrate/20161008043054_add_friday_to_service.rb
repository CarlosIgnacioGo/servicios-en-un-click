class AddFridayToService < ActiveRecord::Migration
  def change
    add_column :services, :friday, :boolean
  end
end
