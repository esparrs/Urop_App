class Exam < ActiveRecord::Base
	has_many :exercises
	belongs_to :lesson

	validates :name, :presence => true
end
