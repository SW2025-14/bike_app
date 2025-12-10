class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :photo
      t.string :custom
      t.string :gender
      t.text :comment

      t.timestamps
    end
  end
end
