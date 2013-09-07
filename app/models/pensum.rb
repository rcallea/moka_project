class Pensum < ActiveRecord::Base
  has_many :courses
  
#   field :state, type: String
  
  validates_presence_of :state
  validates :state, :inclusion => %w(active inactive)
end