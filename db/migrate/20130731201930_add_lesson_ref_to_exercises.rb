class AddLessonRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :lesson, index: true
  end
end
