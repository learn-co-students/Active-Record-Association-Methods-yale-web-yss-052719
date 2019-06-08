class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    Song.all.select do |song|
      song.genre == self
    end.length
  end

  def artist_count
    # return the number of artists associated with the genre
    Song.all.map do |song|
      song.artist
    end.uniq.length
  end

  def all_artist_names
    Song.all.map do |song|
      song.artist.name
    end.uniq
  end
end
