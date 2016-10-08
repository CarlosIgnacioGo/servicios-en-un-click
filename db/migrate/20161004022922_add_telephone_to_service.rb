class AddTelephoneToService < ActiveRecord::Migration
  def change
    add_column :services, :telephone, :string
  end
end
