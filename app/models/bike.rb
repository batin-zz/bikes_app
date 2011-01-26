class Bike < ActiveRecord::Base
  has_many :bikers
  validates :desc, :length => { :maximum => 100 }
end
