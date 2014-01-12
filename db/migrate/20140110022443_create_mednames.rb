class CreateMednames < ActiveRecord::Migration
  def change
    create_table :mednames do |t|
      t.string :name
      t.string :strength
      t.string :form
      t.string :purpose

      t.timestamps
    end
  end
end
