class AddColumnChriperId < ActiveRecord::Migration[6.1]
  def change
      remove_column :chirps, :chirp_profile_id, :integer
      add_column :chirps, :chirper_profile_id, :integer
  end
end
