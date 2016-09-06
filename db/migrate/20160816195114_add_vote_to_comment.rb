class AddVoteToComment < ActiveRecord::Migration
  def change
    add_column :comments, :vote, :integer, default: 0 
  end
end
