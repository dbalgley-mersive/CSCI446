class Article < ActiveRecord::Base
	validates :title, :author_name, :body, presence: true
	validates :title, uniqueness: true
end
