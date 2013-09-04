class User < ActiveRecord::Base
  has_one :role
  has_many :user_courses
  has_many :requests
  belongs_to :master
end