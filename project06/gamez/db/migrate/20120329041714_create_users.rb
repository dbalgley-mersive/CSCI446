class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :crypted_password
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :imagePath
      t.string :role
      t.integer :numGames
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end
end
