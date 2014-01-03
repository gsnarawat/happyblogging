class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.text :content
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
