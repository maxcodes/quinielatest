class User < ActiveRecord::Base

	validates :name, presence: true,
					 length: { maximum: 50 }

	validates :email, presence: true,
					  email_format: true
	validates :phone, presence: true,
					  format: { with: /\A\d{4}-\d{4}\Z/ }

					  
end
