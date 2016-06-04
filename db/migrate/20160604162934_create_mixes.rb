class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :title
      t.integer :duration
      t.text :tracklist
      t.string :url
      t.integer :account_id
      t.integer :platform_id

      t.timestamps null: false
    end
  end
end
