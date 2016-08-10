class Service < ActiveRecord::Base
	has_many :comments
	has_and_belongs_to_many :categories
	belongs_to :user
	#Metodo que actualiza las visitas
	def update_visit_count
		self.update(visit_count: self.visit_count += 1)
	end

	delegate :email, to: :user, prefix: :cat

	mount_uploader :photo, PhotoUploader

	def self.search(search)
		if where("title LIKE ?","%#{search}%").size > 0
			where("title LIKE ?","%#{search}%")			
		else
			all
		end
	end
end
