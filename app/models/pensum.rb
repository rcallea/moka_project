class Pensum < ActiveRecord::Base
  has_many :courses
  
  field :state, type: String  #active -inactive
  
  validates_presence_of :state
end