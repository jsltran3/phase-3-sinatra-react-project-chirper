class RemoveChirpMessagesId < ActiveRecord::Migration[6.1]
  def change
    remove_column :chirps, :chirp_message_id
  end
end 

