class RemoveChirpName < ActiveRecord::Migration[6.1]
  def change
    remove_column :chirps, :name, :string
    
end
end
