class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :likes, default: 0
      t.string :image_url
      t.string :caption
      t.integer :dog_id
      t.timestamps
    end
  end
end
