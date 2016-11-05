class CreatePosts < ActiveRecord::Migration[5.0]
  def up
    create_table :posts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
  
  def down
    drop_table :post
  end
end
