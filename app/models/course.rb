class Course < ActiveRecord::Base
  has_one    :course_type
  has_many   :prerequisites
  belongs_to :master
  belongs_to :pensum
  belongs_to :planned_pensum
  belongs_to :semester_registration
  
  
  field :name,         type: String
  field :description,  type: Text
  field :code,         type: String
  field :credits,      type: Integer
  field :min_students, type: Integer
  field :max_students, type: Integer
  
  validates_presence_of :name, :code, :credits
end

