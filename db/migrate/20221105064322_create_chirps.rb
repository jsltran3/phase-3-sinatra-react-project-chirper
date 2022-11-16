class CreateChirps < ActiveRecord::Migration[6.1]
    def change
      create_table :chirps do |t|
        t.string :name
        t.string :chirp_message
        t.timestamp
        t.datetime "created_at", precision: 6, null: false
        t.datetime "updated_at", precision: 6, null: false
    end
  end
end 