class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :code
      t.string :email
      t.string :gender
      t.integer :role_id
      t.date :born_date

      t.timestamps
    end
  end
end
