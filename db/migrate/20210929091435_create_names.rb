class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :location
      t.string :category
      t.string :level
      t.string :description

      t.timestamps
    end
  end
end
