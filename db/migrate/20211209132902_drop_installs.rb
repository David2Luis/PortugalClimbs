class DropInstalls < ActiveRecord::Migration[6.0]
  def change
    drop_table :problems
  end
end
