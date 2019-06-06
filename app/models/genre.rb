class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    x = []
    self.songs.each do |song|
      if x.include?(song.artist)
        #Nothing
      else
        x << song.artist
      end
      end
    x.count
  end
  

  def all_artist_names
    self.songs.map do |song|
      song.artist.name
    end
  end
end
