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
      @indiv_artist = indiv_artist
      if @@unique_artists.none? {|x| x == indiv_artist}
         @@unique_artists << @indiv_artist
      end
    end
    @@unique_artists
  end

  def self.genres
    @@genres.each do |indiv_genre|
      @indiv_genre = indiv_artist
      if @@unique_genre.none? {|x| x == indiv_genre}
         @@unique_genre << @indiv_genre
      end
    end
    @@unique_genre
  end

end
