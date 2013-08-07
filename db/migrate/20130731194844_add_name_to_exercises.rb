class AddNameToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :name, :string
    add_index :exercises, :name
  end
end
