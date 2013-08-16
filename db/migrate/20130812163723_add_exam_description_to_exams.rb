class AddExamDescriptionToExams < ActiveRecord::Migration
  def change
    add_column :exams, :exam_description, :text
  end
end
