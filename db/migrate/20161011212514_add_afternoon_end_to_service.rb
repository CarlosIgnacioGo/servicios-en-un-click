class AddAfternoonEndToService < ActiveRecord::Migration
  def change
    add_column :services, :afternoon_end, :time
  end
end
