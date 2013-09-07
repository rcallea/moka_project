class AddUserIdToStudentCourse < ActiveRecord::Migration
  def change
    add_column :student_courses, :user_id, :integer
  end
end
