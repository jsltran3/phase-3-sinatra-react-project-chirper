class CreateTableAssociationFixes < ActiveRecord::Migration[6.1]
  def change
    remove_column :chirper_profiles, :chirp_messages_id, :integer
  end
end
