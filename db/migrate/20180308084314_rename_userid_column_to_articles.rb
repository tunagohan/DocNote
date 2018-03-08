class RenameUseridColumnToArticles < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :userid, :user_id
    change_column :articles, :user_id, :integer
  end
end
