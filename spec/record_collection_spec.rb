require 'spec_helper'

describe "Record collection" do

  before :each do
    @record = Record.new("Heartbreaker", "Ryan Adams")
    @other_record = Record.new("Lonesome Dreams", "Lord Huron")
    @rc = RecordCollection.new
  end

  it 'creates an array when instantiated' do
    expect(@rc.collection).to eq([])
  end

  it 'adds record object to collection' do
    @rc.add_to_collection(@record)

    expect(@rc.collection).to include(@record)
  end

  it 'adds multiple records' do
    @rc.add_to_collection(@record)
    @rc.add_to_collection(@other_record)

    expect(@rc.collection.length).to eq(2)
  end

  it 'displays a list of records by artist and name' do
    @rc.add_to_collection(@record)
    @rc.add_to_collection(@other_record)

    expect do
      @rc.browse_collection
    end
    .to output("Ryan Adams: Heartbreaker\nLord Huron: Lonesome Dreams\n").to_stdout


  end
end
