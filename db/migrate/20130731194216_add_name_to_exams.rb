class AddNameToExams < ActiveRecord::Migration
  def change
    add_column :exams, :name, :string
  end
end
