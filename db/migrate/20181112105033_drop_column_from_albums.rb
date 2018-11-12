class DropColumnFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :key_photo
  end
end
