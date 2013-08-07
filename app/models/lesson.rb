class Lesson < ActiveRecord::Base
	has_many :exercises
	has_one :exam
end
