class AddColumnsToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :userid, :string
  end
end
