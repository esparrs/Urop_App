class User < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model - supposedly this doesn't work
	# attr_accessible :username, :email, :password, :password_confirmation

	# Include default devise modules. Others available are:
  	# :token_authenticatable, :confirmable,
  	# :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :stretches => 20

	# validates :name, presence: true, length: {minimum: 4, maximum: 50}, :allow_blank => false 
	# validates :email, presence: true, lenth: {minimum: 5, maximum: 255}, :allow_blank => false #255 is the length used by Facebook and other sites that require username

end
