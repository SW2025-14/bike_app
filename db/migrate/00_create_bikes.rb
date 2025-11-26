class CreateBikes < ActiveRecord::Migration[8.0]
  def change
    create_table :bikes do |t|
      t.string  :name,       null: false
      t.string  :maker,      null: false
      t.integer :displacement
      t.string  :image_url
      t.text    :description

      t.timestamps
    end
  end
end
