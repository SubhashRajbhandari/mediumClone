class AddPostIdAndUserIdToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :post_id, :integer
    add_column :bookmarks, :user_id, :integer
  end
end
