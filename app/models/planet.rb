class Planet < ActiveRecord::Base
   validates_numericality_of :locationX, :allow_nil => false
   validates_numericality_of :locationY, :allow_nil => false
   
   validates_numericality_of :manufacturing
   validates_numericality_of :growth
   validates_numericality_of :production
   validates_numericality_of :research
   validates_numericality_of :science

end
