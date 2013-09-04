class Course < ActiveRecord::Base
  has_many :prerequisites
  belongs_to :pensum
end