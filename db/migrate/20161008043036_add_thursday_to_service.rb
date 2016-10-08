class AddThursdayToService < ActiveRecord::Migration
  def change
    add_column :services, :thursday, :boolean
  end
end
