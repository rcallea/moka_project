class CreatePlannedPensums < ActiveRecord::Migration
  def change
    create_table :planned_pensums do |t|
      t.string :semester
      t.string :semester_type
      t.integer :year

      t.timestamps
    end
  end
end
