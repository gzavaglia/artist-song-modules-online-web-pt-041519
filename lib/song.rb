require 'pry'

class Song
  extend Memorable::ClassMethods #for count & reset_all methods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    # @@songs << self
    self.class.all << self
  end

  def self.all
    @@songs
  end
  
  extend Memorable
  extend Findable
  include Paramable
  def artist=(artist)
    @artist = artist
  end
end
