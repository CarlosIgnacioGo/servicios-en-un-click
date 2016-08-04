class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :services, :categories do |t|
      # t.index [:service_id, :category_id]
      # t.index [:category_id, :service_id]
    end
  end
end
