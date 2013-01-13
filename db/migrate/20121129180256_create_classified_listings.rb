class CreateClassifiedListings < ActiveRecord::Migration
  def change
    create_table :classified_listings do |t|
      t.string :name
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
