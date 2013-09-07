class StudentCourse < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  
#   field :user_id,     type: Integer
#   field :course_id,   type: Integer
#   
#   field :state,       type: String 
#   field :inscription, type: String
  
  
  validates_presence_of :state
  validates :state, :inclusion => %w(approved failed)
  
end