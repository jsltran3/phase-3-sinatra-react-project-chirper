class AddChirpProfileIds < ActiveRecord::Migration[6.1]
  def change
    add_column :chirps, :chirp_profile_id, :integer
  end
end
