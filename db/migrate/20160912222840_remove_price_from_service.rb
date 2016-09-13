class RemovePriceFromService < ActiveRecord::Migration
  def change
    remove_column :services, :price, :string
  end
end
