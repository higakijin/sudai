class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :level
      t.string :category
      t.string :prob_image_id
      t.string :ans_image_id

      t.timestamps
    end
  end
end
