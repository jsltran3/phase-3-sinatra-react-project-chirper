class RemoveChirpProfileId < ActiveRecord::Migration[6.1]
  def change
    remove_column :chirper_profiles, :chirp_profile_id
  end
end
