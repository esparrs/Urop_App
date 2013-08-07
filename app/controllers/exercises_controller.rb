class ExercisesController < ApplicationController
	def new
		@exercise = Exercise.find(params[:id])
	end
	def show
	end
	def index
	end
end
