class CreateChirperProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :chirps do |t|
      t.string :name
      t.integer :chirp_messages_id
      t.timestamps
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end 