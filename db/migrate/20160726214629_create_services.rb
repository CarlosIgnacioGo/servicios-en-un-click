class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :address
      t.string :email
      t.string :phone
      t.integer :visit_count, default: 0

      t.timestamps null: false
    end
  end
end
