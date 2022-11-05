class CreateChirperProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :chirper_profiles do |t|
      t.string :name
      t.integer :chirp_messages_id
      t.integer :chirp_profile_image
    end
  end
end 