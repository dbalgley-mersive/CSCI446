# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Article.create(title: 'Lorem Ipsum',
	author_name: 'Robert Frost',
	body: 
	%{<p>Robert Frost was born in San Fransisco in 19XX...
		</p>},
	creation_date: 'Tuesday, Dec. 6 2011')