class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :total_credits
      t.integer :max_duration
      t.integer :max_cred_semester
      t.integer :max_cred_intersem

      t.timestamps
    end
  end
end
