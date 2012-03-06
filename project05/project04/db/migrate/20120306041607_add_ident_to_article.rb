class AddIdentToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :ident, :integer

  end
end
