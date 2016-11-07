class RecordCollection

  attr_accessor :collection
  def initialize
    @collection = []
  end

  def add_to_collection(record)
    @collection.push(record)
  end

end
