class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs[0].genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    x = []
    self.songs.each do |song|
      if x.include?(song.genre)
        #Nothing
      else
        x << song.genre
      end
      
    end
    x.count
  end
end
