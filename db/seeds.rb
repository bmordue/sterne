# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# some dummy data, just to have something to see

a_player = Player.create(:name => 'Player One', :email => 'playerone@example.com',
   :password => 'password', :password_confirmation => 'password' )

universes = Universe.create([{ :turn => '1'}])
games = Game.create(:universe => universes.first)
Planet.create(:player => a_player, :locationX => '1', :locationY => '1', :manufacturing => '0', :growth => '0',
   :research => '0', :population => '0', :science => '0',
   :name => 'Planet One', :universe => universes.first)
