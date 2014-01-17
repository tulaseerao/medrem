class AddDependentIdToMedication < ActiveRecord::Migration
  def change
    add_column :medications, :dependent_id, :integer
  end
end
