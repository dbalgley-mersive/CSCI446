class AddAuthIdToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :authId, :integer

  end
end
