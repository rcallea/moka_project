class UserCourse < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  
  field :state, type: String #approved, not approved
  
  
  validates_presence_of :state
  
end