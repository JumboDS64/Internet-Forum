class CreateMessages < ActiveRecord::Migration
  def up
    create_table :messages do |item|
      item.string :content
      item.string :user
      item.timestamp :timestamp
      item.integer :upvotes
      item.integer :downvotes
    end
  end
  def down
    drop_table :messages
  end
end
