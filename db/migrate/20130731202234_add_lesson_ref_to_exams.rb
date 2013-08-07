class AddLessonRefToExams < ActiveRecord::Migration
  def change
    add_reference :exams, :lesson, index: true
  end
end
