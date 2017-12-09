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

      @@unique_artists.any? do |list_of_names|
        list_of_names = indiv_artist
              binding.pry
        if false
          @@unique_artists << indiv_artist
        end
      end
    end
    @@unique_artists
  end

end
