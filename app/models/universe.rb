class Universe < ActiveRecord::Base
  has_many :planets
  has_many :ships

  belongs_to :game

end
