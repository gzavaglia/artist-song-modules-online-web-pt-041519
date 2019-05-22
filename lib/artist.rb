require 'pry'

class Artist
  extend Memorable::ClassMethods #for count & reset_all methods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # @@artists << self
    # self.class.all << self
    super
    @songs = []
  end

  def self.all
    @@artists
  end
  
  # extend Memorable::ClassMethods #for count & reset_all methods
  # extend Findable
  # include Paramable
  # include Memorable::InstanceMethods
  
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
