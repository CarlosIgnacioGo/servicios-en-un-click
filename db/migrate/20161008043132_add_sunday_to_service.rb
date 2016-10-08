class AddSundayToService < ActiveRecord::Migration
  def change
    add_column :services, :sunday, :boolean
  end
end
