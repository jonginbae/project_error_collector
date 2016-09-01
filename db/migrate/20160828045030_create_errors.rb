class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.integer :user_id
      t.integer :area_id
      t.integer :language_id
      t.string :title
      t.text :content
      t.text :image

      t.timestamps null: false
    end
  end
end
