class Article < ActiveRecord::Base
	belongs_to :author
	validates :title, :body, presence: true
	validates :title, uniqueness: true

end
