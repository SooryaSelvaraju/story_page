class CreateResponseComments < ActiveRecord::Migration[8.0]
  def change
    create_table :response_comments do |t|
      t.text :content
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
