class Role < ActiveRecord::Base
  belongs_to :user
  
  field :name, type: String
  
  validates_presence_of :name
end