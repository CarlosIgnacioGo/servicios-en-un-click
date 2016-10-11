class AddAfternoonStartToService < ActiveRecord::Migration
  def change
    add_column :services, :afternoon_start, :time
  end
end
