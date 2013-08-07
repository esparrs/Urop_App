class ExamsController < ApplicationController
  def new
  	@exam = Exam.new
  end
  def show
  	@exam = Exam.find(1)
  	# gon.exercise_count = @exam.exercises.count
  	# gon.exercise = 1
  	# gon.exercises = %w(@exam.exercises())

  	# %w is the key
  	for j in 1..@exam.exercises.count
  		(gon.exercises ||= []) << @exam.exercises.find(j).name
  	end
  end
  def index
  end
end
