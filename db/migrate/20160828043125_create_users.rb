class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :password_digest
      t.string :email
      t.string :github
      t.string :phone
      t.string :authority

      t.timestamps null: false
    end
  end
end
