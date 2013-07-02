class User < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 4, maximum: 50}, :allow_blank => false 
	validates :email, presence: true, lenth: {minimum: , maximum: 255}, :allow_blank => false #255 is the length used by Facebook and other sites that require usernames
end
