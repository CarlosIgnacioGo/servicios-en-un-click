class Service < ActiveRecord::Base
	has_many :comments
	has_and_belongs_to_many :categories
	belongs_to :user
	#Metodo que actualiza las visitas
	def update_visit_count
		self.update(visit_count: self.visit_count += 1)
	end

	mount_uploader :photo, PhotoUploader
end
