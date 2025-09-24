class AddResponseIdToResponseComment < ActiveRecord::Migration[8.0]
  def change
    add_column :response_comments, :response_id, :integer
  end
end
