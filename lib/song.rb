require "pry"

class Song
  attr_accessor :name, :artist, :genre

  # def name
  #   @name
  # end
  # def name=(name)
  #   @name = name
  # end

  @@count = 0
  @@genres = []
  @@artists = []
  @@unique_artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists

    @@artists.each do |indiv_artist|
      if @@unique_artists = []
        @@unique_artists << indiv_artist
      elsif @@unique_artists.none? {|x| x == indiv_artist}
        @@unique_artists << indiv_artist
      end
    end
    @@unique_artists
  end

end
