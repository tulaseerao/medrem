class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dosage
      t.string :form
      t.string :amount_i_take
      t.string :days_i_take
      t.decimal :quantity
      t.date :date_prescribed
      t.date :last_refill
      t.integer :days_ahead_reminder
      t.string :pharmacy
      t.string :doctor
      t.text :notes

      t.timestamps
    end
  end
end
