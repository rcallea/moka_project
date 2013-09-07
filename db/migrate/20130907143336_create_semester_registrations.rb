class CreateSemesterRegistrations < ActiveRecord::Migration
  def change
    create_table :semester_registrations do |t|
      t.string :semester
      t.string :semester_type
      t.integer :year

      t.timestamps
    end
  end
end
