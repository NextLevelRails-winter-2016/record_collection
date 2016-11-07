class Record

  attr_reader :name, :artist
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def purchase
    collection = []
    collection.push(self)
  end

end
