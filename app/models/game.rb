class Game < ActiveRecord::Base
  has_many :players
  
  has_one :universe

end
