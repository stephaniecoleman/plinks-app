class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer
    add_column :users, :avatar, :string
    add_column :users, :handle, :string
    add_column :users, :url, :string
    add_column :users, :location, :string
  end
end
