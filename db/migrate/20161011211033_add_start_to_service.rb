class AddStartToService < ActiveRecord::Migration
  def change
    add_column :services, :start, :time
  end
end
