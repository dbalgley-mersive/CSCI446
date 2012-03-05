class CreateArticles < ActiveRecord::Migration
	has_one :article_data
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.date :creation_date
      t.timestamps
    end
  end
end
