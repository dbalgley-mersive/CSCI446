class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :imagePath
      t.string :role
      t.integer :numGames

      t.timestamps
    end
  end
end
