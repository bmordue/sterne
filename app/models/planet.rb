class Planet < ActiveRecord::Base
  belongs_to :player
  belongs_to :universe
  has_many :ships

end
