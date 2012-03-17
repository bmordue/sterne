class Player < ActiveRecord::Base
  belongs_to :game
  has_many :ships
  has_many :planets

end
