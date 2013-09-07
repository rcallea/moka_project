class Master < ActiveRecord::Base
  has_many      :pensums
  has_many      :courses
  
  has_many :registrations
  has_many :users, through: :registrations
    
#   field :name,              type: String
#   field :code,              type: String
#   field :description,       type: Text
#   field :total_credits,     type: Integer
#   field :max_duration,      type: Integer #total years
#   field :max_cred_semester, type: Integer
#   field :max_cred_intersem, type: Integer
  
  validates_presence_of :name, :code, :total_credits
end