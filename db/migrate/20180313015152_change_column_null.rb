class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
    # Articles DB
    change_column_null :articles, :title, false, 'No Title'
    change_column_null :articles, :body, false, 'No Body'

    # Users DB
    change_column_null :users, :username, false, 'No Name'
  end
end
