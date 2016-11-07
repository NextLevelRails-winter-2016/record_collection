class RecordCollection

  attr_accessor :collection
  def initialize
    @collection = []
  end

  def add_to_collection(record)
    @collection.push(record)
  end

  def browse_collection
    @collection.each do |r|
      puts "#{r.artist}: #{r.name}"
    end
  end
end
