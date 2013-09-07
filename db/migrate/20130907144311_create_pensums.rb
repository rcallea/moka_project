class CreatePensums < ActiveRecord::Migration
  def change
    create_table :pensums do |t|
      t.string :state

      t.timestamps
    end
  end
end
