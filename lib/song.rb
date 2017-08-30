class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :artist, :name, :genre

  def initialize(title = "unknown", new_artist = "Unknown", genre = "Unknown")
    @name = title
    @artist = new_artist
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
    result = {}
    self.genres.each do |genre|
      result[genre] = 0
    end
    @@genres.each do |genre|
      result[genre] += 1
    end
    result.sort.to_h
  end

  def self.artist_count
    result = {}
    self.artists.each do |artist|
      result[artist] = 0
    end
    @@artists.each do |artist|
      result[artist] += 1
    end
    result
  end

end
