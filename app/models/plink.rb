class Plink < ActiveRecord::Base
	belongs_to :plink_author, class_name: "Musician"
	belongs_to :plink_recipient, class_name: "Musician"
end
