class CreateMixStyles < ActiveRecord::Migration
  def change
    create_table :mix_styles do |t|
      t.integer :mix_id
      t.integer :style_id

      t.timestamps null: false
    end
  end
end
