class CreatePlaylistTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_tracks do |t|
      t.integer :playlist_id, NULL: false
      t.integer :song_id, NULL: false

      t.timestamps

    end
    add_index :playlist_tracks, :playlist_id
    add_index :playlist_tracks, :song_id
  end
end
