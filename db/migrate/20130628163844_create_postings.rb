class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :content
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
    add_index :postings, [:user_id, :created_at]
    add_index :postings, [:category_id, :created_at]
  end
end
