class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.text :content
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
