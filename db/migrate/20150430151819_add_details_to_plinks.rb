class AddDetailsToPlinks < ActiveRecord::Migration
  def change
    add_column :plinks, :plink_author_id, :integer
    add_index :plinks, :plink_author_id
    add_column :plinks, :plink_receiver_id, :integer
    add_index :plinks, :plink_receiver_id
  end
end
