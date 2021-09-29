class ChangeTableNameToProjects < ActiveRecord::Migration[6.0]
  def change
    rename_table :problem, :problems
  end
end
