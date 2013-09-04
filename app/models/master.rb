class Master < ActiveRecord::Base
  has_many :pensums
  has_many :users
end