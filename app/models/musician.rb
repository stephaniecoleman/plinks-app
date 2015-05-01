class Musician < ActiveRecord::Base
	has_many :followings
	has_many :fans, through: :followings
	has_many :authored_plinks, class_name: "Plink", foreign_key: "plink_author_id"
	has_many :received_plinks, class_name: "Plink", foreign_key: "plink_recipient_id"
	has_many :plink_givers, through: :received_plinks, source: :plink_author
	has_many :plink_recipients, through: :authored_plinks, source: :plink_recipient
end
