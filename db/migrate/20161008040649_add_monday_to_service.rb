class AddMondayToService < ActiveRecord::Migration
  def change
    add_column :services, :monday, :boolean
  end
end
