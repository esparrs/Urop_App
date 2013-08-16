class ExamsController < ApplicationController
  def new
  	@exam = Exam.new
  end
  def show
  	@exam = Exam.find(1)

    gon.exercise_first_id = @exam.exercises.find(1).id 
    gon.exercise_second_id = @exam.exercises.find(2).id
    gon.exercise_third_id = @exam.exercises.find(3).id 
    gon.exercise_fourth_id = @exam.exercises.find(4).id
    gon.exercise_fifth_id = @exam.exercises.find(5).id 

  	for j in 1..@exam.exercises.count
  		(gon.exercises ||= []) << @exam.exercises.find(j).name
  	end
  end
  def index
  end
  def update
  end
end
