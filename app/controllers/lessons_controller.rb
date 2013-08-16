class LessonsController < ApplicationController
  def new
  end

  def show
  	@lesson = Lesson.find(1)
  end
end
