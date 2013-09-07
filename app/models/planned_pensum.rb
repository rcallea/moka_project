class PlannedPensum < ActiveRecord::Base
  belongs_to :user
  has_many   :courses
  
#   field :user_id,       type: Integer
#   
#   field :semester,      type: Integer # 1 or 2
#   field :semester_type, type: String  # normal - intersemestral
#   field :year,          type: Integer
  
  validates_presence_of :semester, :semester_type, :year
  validates :semester_type, :inclusion => %w(semester intersemestral)
end