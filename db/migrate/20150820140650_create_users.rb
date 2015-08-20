class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |item|
      item.string :name
      item.string :pass
      item.string :avatar
      item.string :description
      item.string :signature
      item.string :gender
      item.timestamp :createtime
      item.timestamp :activetime
      item.date :birthdate
      item.time :birthtime
    end
  end
  def down
    drop_table :users
  end
end
