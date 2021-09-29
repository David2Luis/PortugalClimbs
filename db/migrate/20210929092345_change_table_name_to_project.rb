class ChangeTableNameToProject < ActiveRecord::Migration[6.0]
  def change
    rename_table :names, :problem
  end
end
