class AddDateToService < ActiveRecord::Migration
  def change
    add_column :services, :date, :datetime
  end
end
