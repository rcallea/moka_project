class AddCourseIdToStudentCourse < ActiveRecord::Migration
  def change
    add_column :student_courses, :course_id, :integer
  end
end
