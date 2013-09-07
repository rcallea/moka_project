class Prerequisite < ActiveRecord::Base
  belongs_to :course
  
#   field :course_id, type: Integer
end