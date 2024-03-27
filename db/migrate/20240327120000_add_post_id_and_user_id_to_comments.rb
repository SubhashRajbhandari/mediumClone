class AddPostIdAndUserIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
    rename_column :comments, :comment, :description
  end
end
