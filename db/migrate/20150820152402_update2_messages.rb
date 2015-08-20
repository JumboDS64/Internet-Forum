class Update2Messages < ActiveRecord::Migration
  def up
    remove_column :messages, :user, :string
    add_column :messages, :user_id, :integer
    #add_column :messages, :parent_id, :integer
  end
  def down
    #remove_column :messages, :parent_id, :integer
    remove_column :messages, :user_id, :integer
    add_column :messages, :user, :string
  end
end
