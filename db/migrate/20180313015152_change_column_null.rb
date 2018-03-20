class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
    # Articles DB
    change_column_null :articles, :title, false
    change_column_null :articles, :body, false

    # Users DB
    change_column_null :users, :username, false
  end
end
