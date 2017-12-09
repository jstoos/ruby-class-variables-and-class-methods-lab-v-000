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
  @@unique_genre = []
  @@hash_final = {}

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
      @indiv_genre = indiv_genre
      if @@unique_genre.none? {|x| x == indiv_genre}
         @@unique_genre << @indiv_genre
      end
    end
    @@unique_genre
  end

  def self.genre_count
    counter = 0
    @@unique_genre.each do |genre|
      @genre_item = genre
      @@genres.each do |individual_genre|
        if individual_genre = @genre_item
          counter +=1
        end
        @@hash_final[@genre_item] = counter
  #binding.pry = @@hash_final = {"rap"=>1}} which is correct (using @genre)
  #binding.pry = @@hash_final = {"rap"=>1}} which is correct (using @genre_item)
      end
      #binding.pry #= @@hash_final = {"rap"=>3} which is incorrect (using @genre)
  #binding.pry #= @@hash_final == {nil=>1} (using genre)
  #binding.pry #= @@hash_final = {"rap"=>3} which is incorrect (using @genre_item)

      @@hash_final
    end
    #binding.pry @@hash_final = {"rap"=>3, "pop"=>6}(using @genre)
binding.pry
  @@hash_final
  end
end
