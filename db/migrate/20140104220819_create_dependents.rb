class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :user_id

      t.timestamps
    end
  end
end
