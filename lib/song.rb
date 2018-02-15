require 'pry'

class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end 
  
  def self.count
    @@count
  end  
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end 
  def self.genre_count
  
    genre_count_hash = {}
   
    @@genres.each do |genre| 
      binding.pry
      genre_count = @@genres.find_all(genre)
      binding.pry
      genre_count_hash << genre_count
      ####################################
    end
  genre_count_hash
end
  count_hash = {}
array = ["black", "blue", "yellow", "red", "blue", "red", "red"]

array.each do |value|
  if count_hash[value] == nil 
    count_hash[value] = 1 
  else 
    count_hash[value] += 1 
  end
end 
count_hash    
    
    
end  
#You will need to check to see if the hash already contains a key of a particular genre.
#If so, increment the value of that key by one, otherwise, create a new key/value pair.
