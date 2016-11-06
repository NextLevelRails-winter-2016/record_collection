require_relative '../record'

describe "Record" do
  it 'instantiates an object with name and artist' do
    record = Record.new('Seven Swans', 'Sufjan Stevens')

    expect(record).to be_an_instance_of(Record)
  end

  it 'returns a string with the record name' do
    record = Record.new('Helplessness Blues', 'Fleet Foxes')

    expect(record.name).to eq('Helplessness Blues')
  end

  it 'returns a string with artist' do
    record = Record.new('Kind of Blue', 'Miles Davis')

    expect(record.artist).to eq('Miles Davis')
  end

  it '#purchase' do
    record = Record.new('The Earth is Not a Cold Dead Place', 'Explosions in the Sky')

    expect(record.purchase).to include(record)
  end

end
