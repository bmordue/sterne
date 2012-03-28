class Game < ActiveRecord::Base
   validates_numericality_of :universe_id #TODO: validate existing universe_id
   has_many :players
   has_one :universe

end
