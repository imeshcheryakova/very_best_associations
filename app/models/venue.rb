class Venue < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :address }
  validates :address, :presence => true
  validates :address, :format => {with: /\A[0-9]+ [a-zA-Z0-9\.\- ]+ [0-9]{5,5}\z/}
  validates :neighborhood_id, :presence => true

  belongs_to :neighborhood
  has_many :favorites
end
