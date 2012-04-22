# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

modules_to_load = [
  Authlogic::ActsAsAuthentic::SingleAccessToken::Methods::InstanceMethods,
  Authlogic::ActsAsAuthentic::SingleAccessToken::Methods,
  Authlogic::ActsAsAuthentic::SessionMaintenance::Methods,
  Authlogic::ActsAsAuthentic::PersistenceToken::Methods::InstanceMethods,
  Authlogic::ActsAsAuthentic::PersistenceToken::Methods,
  Authlogic::ActsAsAuthentic::PerishableToken::Methods::InstanceMethods,
  Authlogic::ActsAsAuthentic::PerishableToken::Methods,
  Authlogic::ActsAsAuthentic::Password::Methods::InstanceMethods,
  Authlogic::ActsAsAuthentic::Password::Methods,
  Authlogic::ActsAsAuthentic::Password::Callbacks,
  Authlogic::ActsAsAuthentic::MagicColumns::Methods,
  Authlogic::ActsAsAuthentic::Login::Methods,
  Authlogic::ActsAsAuthentic::LoggedInStatus::Methods::InstanceMethods,
  Authlogic::ActsAsAuthentic::LoggedInStatus::Methods,
  Authlogic::ActsAsAuthentic::Email::Methods
].reject{ |m| User.included_modules.include? m }
User.send :include, *modules_to_load
puts "Seed data"
Role.delete_all
Role.create!(:name => 'admin')
Role.create!(:name => 'member')
User.delete_all
User.create(:username => 'dbalgley1', password: 'tempa', password_confirmation: 'tempa', firstName: 'Davisa', lastName: 'Balgleya', email: 'dbalgley1@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("admin").id, numGames: '10')
User.create(:username => 'dbalgley2', password: 'tempb', password_confirmation: 'tempb', firstName: 'Davisb', lastName: 'Balgleyb', email: 'dbalgley2@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("admin").id, numGames: '10')
User.create(:username => 'dbalgley3', password: 'tempc', password_confirmation: 'tempc', firstName: 'Davisc', lastName: 'Balgleyc', email: 'dbalgley3@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("admin").id, numGames: '10')
User.create(:username => 'dbalgley4', password: 'tempd', password_confirmation: 'tempd', firstName: 'Davisd', lastName: 'Balgleyd', email: 'dbalgley4@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("admin").id, numGames: '10')
User.create(:username => 'dbalgley5', password: 'tempe', password_confirmation: 'tempe', firstName: 'Davise', lastName: 'Balgleye', email: 'dbalgley5@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("admin").id, numGames: '10')
User.create(:username => 'dbalgley6', password: 'tempf', password_confirmation: 'tempf', firstName: 'Davisf', lastName: 'Balgleyf', email: 'dbalgley6@mines.edu', imagePath: 'image.png', :role_id => Role.find_or_create_by_name("member").id, numGames: '10')
