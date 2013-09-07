class AddUserIdToPlannedPensum < ActiveRecord::Migration
  def change
    add_column :planned_pensums, :user_id, :integer
  end
end
