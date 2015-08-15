class Neighborhood < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :city }
  validates :city, :presence => true

end
