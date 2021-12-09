class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :location
      t.string :category
      t.string :level
      t.string :description
      t.string :name
    end
  end
end
