class CourseType < ActiveRecord::Base
  belongs_to :course

  field :name,        type: String
  field :description, type: Text
  
  validates_presence_of :name
end