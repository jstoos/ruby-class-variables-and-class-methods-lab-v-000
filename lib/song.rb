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
      @@genres.each do |individual_genre|
        @@unique_genre.reverse.each do |unique_genre_item, array=[]|
         if individual_genre = unique_genre_item
           array << individual_genre
         end
         @individual_genre = individual_genre
       end
       @@hash_final[@individual_genre]=array.count
     end

   @@hash_final
   end
 end



  #     @@unique_genre.reverse.each do |unique_genre_item, array=[]|
  #       @@genres.each do |individual_genre|
  #         if individual_genre = unique_genre_item
  #           array << individual_genre
  #         end
  #         @individual_genre = individual_genre
  #       end
  #       @@hash_final[@individual_genre]=array.count
  #     end
  #
  #   @@hash_final
  #   end
  # end
  #
  #

#   def self.genre_count
#
#     @@unique_genre.reverse.each do |genre, counter|
#       @genre_item = genre
#       counter = 0
#       @@genres.each do |individual_genre|
#         individual_counter = counter
#         if individual_genre = @genre_item
#           individual_counter +=1
#         end
#         @@hash_final[@genre_item] = individual_counter
#       end
#     end
#   @@hash_final
#   end
# end
