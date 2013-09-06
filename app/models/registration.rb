class Registration < ActiveRecord::Base
  belongs_to :master
  belongs_to :user
  
  field :beging_date,            type: Date
  field :max_date_finish,        type: Date
  field :total_approved_credits, type: Integer, default: 0
  
  validates_presence_of :beging_date, :max_date_finish, :total_approved_credits
end