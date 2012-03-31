class Player < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create

   validates_presence_of :name
   validates_presence_of :email

  belongs_to :game
  has_many :ships
  has_many :planets

end
