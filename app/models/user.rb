class User < ActiveRecord::Base
	before_save { email.downcase! }
	# Setup accessible (or protected) attributes for your model - supposedly this doesn't work
	# attr_accessible :name :username, :email, :password, :password_confirmation

	# Include default devise modules. Others available are:
  	# :token_authenticatable, :confirmable,
  	# :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, 
  		:registerable,
        :recoverable, 
        :rememberable, 
        :trackable, 
        :validatable, 
        :stretches => 20

	validates :name, 
		presence: true, 
		length: {minimum: 4, maximum: 50}, 
		:case_sensitive => false, 
		:allow_blank => false 
	validates :username, 
		presence: true, 
		length: {minimum: 6}, 
		uniqueness: { case_sensitive: false }, 
		allow_blank: false
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	#255 is the length of email used by Facebook and other sites that require username
	validates :email, 
		presence: true, 
		length: {minimum: 5, maximum: 255}, 
		format: { with: VALID_EMAIL_REGEX }, 
		uniqueness: { case_sensitive: false }, 
		:allow_blank => false 
	# has_secure_password
	validates :password, 
		presence: true,
	 	length: { minimum: 8 }
	validates :password_confirmation, 
		presence: true
end
