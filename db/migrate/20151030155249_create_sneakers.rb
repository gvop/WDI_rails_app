class CreateSneakers < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.string :type
      t.string :gender
      t.string :photo_source
      t.references :user, index: true, foreign_key: true
      t.references :make, index: true, foreign_key: true
      t.text :discription

      t.timestamps null: false
    end
  end
end
