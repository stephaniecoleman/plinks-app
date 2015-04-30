class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.integer :uid
      t.string :handle
      t.string :avatar
      t.string :location
      t.string :url
      t.timestamps null: false
    end
  end
end
