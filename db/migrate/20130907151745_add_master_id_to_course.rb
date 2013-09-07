class AddMasterIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :master_id, :integer
  end
end
