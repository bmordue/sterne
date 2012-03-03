class Universe < ActiveRecord::Base
  has_many :planets
  has_many :ships
end
