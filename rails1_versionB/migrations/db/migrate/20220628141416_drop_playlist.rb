class DropPlaylist < ActiveRecord::Migration[5.2]
  def change
    drop :playlist_tracks
  end
end
