class Exercise < ActiveRecord::Base
	belongs_to :lesson
	belongs_to :exam

	validates :name, :presence => true
	validates :content, presence: true
end
