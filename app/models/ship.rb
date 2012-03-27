class Ship < ActiveRecord::Base

   validates_presence_of :player_id #TODO: should validate that player_id is a valid player
 

   validates_numericality_of :locationX, :allow_nil => false
   validates_numericality_of :locationY, :allow_nil => false
   validates_numericality_of :hitpoints, :allow_nil => false
   
   #TODO: validate planet id in destination   
   
   validates_presence_of :shiptype_id #TODO: should validate for shiptype

  belongs_to :player
  belongs_to :universe
  belongs_to :planet

end
