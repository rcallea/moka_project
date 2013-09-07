class AddUserIdToSemesterRegistration < ActiveRecord::Migration
  def change
    add_column :semester_registrations, :user_id, :integer
  end
end
