class AddExamRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :exam, index: true
  end
end
