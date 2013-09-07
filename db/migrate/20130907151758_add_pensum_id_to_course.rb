class AddPensumIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :pensum_id, :integer
  end
end
