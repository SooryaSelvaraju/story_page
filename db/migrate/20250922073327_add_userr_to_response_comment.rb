class AddUserrToResponseComment < ActiveRecord::Migration[8.0]
  def change
    add_column :response_comments, :user, :string
  end
end
