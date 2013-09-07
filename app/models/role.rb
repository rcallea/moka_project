class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, through: :user_roles
  
#   field :name, type: String
  
  validates_presence_of :name
  validates :gender, :inclusion => %w(studen coordinator assistant)
end