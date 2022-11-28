class AddLikeColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :chirps, :like, :boolean
end
end
