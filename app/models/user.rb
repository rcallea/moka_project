class User < ActiveRecord::Base
  has_many :role
  has_many :user_courses
  has_many :requests
  
  has_many :registrations
  has_many :masters, through: :registrations
  
  field :name,      type: String
  field :code,      type: String
  field :email,     type: String
  field :gender,    type: String
  field :born_date, type: Date
  
  validates_presence_of :name, :code, :email
  validates :email, :format => /@/
  validates :gender, :inclusion => %w(male female)
end