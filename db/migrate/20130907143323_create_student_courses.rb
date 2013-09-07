class CreateStudentCourses < ActiveRecord::Migration
  def change
    create_table :student_courses do |t|
      t.string :state
      t.date :inscription

      t.timestamps
    end
  end
end
