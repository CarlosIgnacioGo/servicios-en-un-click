class AddMorningEndToService < ActiveRecord::Migration
  def change
    add_column :services, :morning_end, :time
  end
end
