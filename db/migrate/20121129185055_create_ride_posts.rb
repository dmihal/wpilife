class CreateRidePosts < ActiveRecord::Migration
  def change
    create_table :ride_posts do |t|
      t.string :title
      t.datetime :date
      t.string :type
      t.text :body

      t.timestamps
    end
  end
end
