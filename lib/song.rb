class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq!
  end

  def self.genres
    return @@genres.uniq!
  end

  def self.genre_count
    @@genres.each do |genre_name|
      if @@genre_count.has_key?(genre_name)
        @@genre_count[genre_name] += 1
      else
        @@genre_count[genre_name] = 1
      end
    end
  end
end
