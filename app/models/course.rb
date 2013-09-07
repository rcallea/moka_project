class Course < ActiveRecord::Base
  has_one    :course_type
  has_many   :prerequisites
  has_many   :planned_pensum
  has_many   :semester_registration
  belongs_to :master
  belongs_to :pensum
  
#   field :course_type_id, type: Integer
#   field :master_id,      type: Integer
#   field :pensum_id,      type: Integer
#   
#   field :name,         type: String
#   field :description,  type: Text
#   field :code,         type: String
#   field :credits,      type: Integer
#   field :min_students, type: Integer
#   field :max_students, type: Integer
  
  validates_presence_of :name, :code, :credits
end

