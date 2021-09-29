class PlaylistTrack < ApplicationRecord
  belongs_to :playlist, counter_cache: true
  belongs_to :track
  belongs_to :artist
  belongs_to :album, optional: true

  validates :track_id,
            uniqueness: {
              scope: :playlist_id
            }
end
