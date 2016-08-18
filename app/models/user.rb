class User < ActiveRecord::Base
	has_secure_password
	validates :name, :email, :password_confirmation, presence: true
	validates :email, uniqueness: true, format: {with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i}
	
	has_many :statuses, dependent: :destroy
	has_many :likes, dependent: :destroy

	validates :password, length: {minimum: 6, maximum: 20}

end




