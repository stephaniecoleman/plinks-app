class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.integer :fan_id
      t.integer :musician_id
      t.timestamps null: false
    end
  end
end
