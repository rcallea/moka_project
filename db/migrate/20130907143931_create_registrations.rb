class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.date :begin_date
      t.date :max_date_finish
      t.integer :total_approved_credits

      t.timestamps
    end
  end
end
