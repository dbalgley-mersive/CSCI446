class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :author_name
      t.string :image_path

      t.timestamps
    end
  end
end
