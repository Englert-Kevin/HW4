class AddUserIdToPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :user, :integer
  	add_column :posts, :user_id, :integer
  end
end
