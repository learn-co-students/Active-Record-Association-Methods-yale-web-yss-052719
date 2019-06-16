
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
  	self.genre.name
  end

  def drake_made_this
  	drake = Artist.all.find do |artist|
  		artist.name == "Drake"
  	end
  	self.artist = drake
    # when this method is called it should assign the song's artist to Drake
  end
end