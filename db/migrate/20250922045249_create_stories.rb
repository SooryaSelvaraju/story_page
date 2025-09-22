class CreateStories < ActiveRecord::Migration[8.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :user
      t.integer :upvotes

      t.timestamps
    end
  end
end
