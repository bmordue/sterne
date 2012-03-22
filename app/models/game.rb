class Game < ActiveRecord::Base
   validates_numericality_of :universe_id #TODO: validate existing universe_id
end
