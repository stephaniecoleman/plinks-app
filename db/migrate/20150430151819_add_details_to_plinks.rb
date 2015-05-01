class AddDetailsToPlinks < ActiveRecord::Migration
  def change
    add_column :plinks, :plink_author_id, :integer
    # add_index :plinks, :plink_author_id
    add_column :plinks, :plink_recipient_id, :integer
    # add_index :plinks, :plink_recipient_id
  end
end
