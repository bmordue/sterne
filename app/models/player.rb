class Player < ActiveRecord::Base
   validates_presence_of :name
   validates_presence_of :email

  belongs_to :game
  has_many :ships
  has_many :planets
  belongs_to :game
  has_many :ships
  has_many :planets

end
