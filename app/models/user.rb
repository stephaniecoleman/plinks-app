class User < ActiveRecord::Base

	def self.create_with_auth_hash(auth_hash)
		self.create(
			uid: auth_hash[:uid],
			handle: auth_hash[:info][:nickname],
			name: auth_hash[:info][:name],
			avatar: auth_hash[:info][:image],
			location: auth_hash[:info][:location],
			url: auth_hash[:info][:urls][:Website]
			)
	end

end
