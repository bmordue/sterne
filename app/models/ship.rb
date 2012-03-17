class Ship < ActiveRecord::Base
  belongs_to :player
  belongs_to :universe
  belongs_to :planet

end
