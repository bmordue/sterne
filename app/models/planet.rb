class Planet < ActiveRecord::Base
   validates_numericality_of :locationX, :allow_nil => false
   validates_numericality_of :locationY, :allow_nil => false
   
   validates_numericality_of :manufacturing
   validates_numericality_of :growth
   validates_numericality_of :population
   validates_numericality_of :research
   validates_numericality_of :science

  belongs_to :player
  belongs_to :universe
  has_many :ships

end
