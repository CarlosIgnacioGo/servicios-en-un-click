class AddMorningStartToService < ActiveRecord::Migration
  def change
    add_column :services, :morning_start, :time
  end
end
