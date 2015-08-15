class Venue < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :address }
  validates :address, :presence => true
  validates :address, :format => {with: /\A[0-9]+ [a-zA-Z0-9\.\- ,]+ [0-9]{5,5}\z/, message: "Example 345 E.Wacker,1311,Chicago,IL 60601"}
  validates :neighborhood_id, :presence => true

  belongs_to :neighborhood
  has_many :favorites
end
