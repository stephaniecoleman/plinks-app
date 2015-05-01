class User < ActiveRecord::Base
	has_many :followings, foreign_key: "fan_id"
	has_many :musicians, through: :followings

	validates :uid, :handle, uniqueness: true

	def self.create_with_auth_hash(auth_hash)
		self.create(
			name: auth_hash[:info][:name],
			uid: auth_hash[:uid],
			handle: auth_hash[:info][:nickname],
			avatar: auth_hash[:info][:image],
			location: auth_hash[:info][:location],
			url: auth_hash[:info][:urls][:Website]
			)
	end

end
