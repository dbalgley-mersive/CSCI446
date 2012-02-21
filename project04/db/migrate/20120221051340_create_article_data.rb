class CreateArticleData < ActiveRecord::Migration
	belongs_to :articles
  def change
    create_table :article_data do |t|
      t.integer :edits
      t.string :subtitle
      t.timestamps
    end
  end
end
