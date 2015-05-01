class Following < ActiveRecord::Base
	belongs_to :fan, class_name: "User"
	belongs_to :musician
end
