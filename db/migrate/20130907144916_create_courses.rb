class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :credits
      t.integer :max_students
      t.integer :min_students

      t.timestamps
    end
  end
end
