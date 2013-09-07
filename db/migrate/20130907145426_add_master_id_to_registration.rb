class AddMasterIdToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :master_id, :integer
  end
end
