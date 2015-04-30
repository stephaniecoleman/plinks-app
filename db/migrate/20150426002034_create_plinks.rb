class CreatePlinks < ActiveRecord::Migration
  def change
    create_table :plinks do |t|
    	t.string :text
      t.timestamps null: false
    end
  end
end
