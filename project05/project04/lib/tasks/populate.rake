namespace :db do
	desc "erase and fill db"
	task :populate => :environment do
		require 'populator'

		[Author, Article].each(&:delete_all)

		Author.populate 50 do |author|
			author.author_name = Populator.words(2).titleize
			author.image_path = Populator.words(1)
			Article.populate (0..10) do |article|
				article.ident = author.authId
				article.title = Populator.words(2..7).titleize
				article.body = Populator.sentences(100..200)
				article.creation_date = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012]
			end
		end
	end
end