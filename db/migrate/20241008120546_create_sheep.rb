class CreateSheep < ActiveRecord::Migration[7.2]
  def change
    create_table :sheep do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.text :description
      t.float :weight
      t.string :breed
      t.float :day_rate
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
