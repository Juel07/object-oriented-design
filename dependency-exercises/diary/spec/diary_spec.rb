require "diary"

describe Diary do
  let(:title_1) { "Hello" }
  let(:body_1) { "Welcome to my diary." }
  let(:title_2) { "My day" }
  let(:body_2) { "Today went well." }

  let(:entry_1) { double(:entry_double, title: title_1, body: body_1) }
  let(:entry_2) { double(:entry_double, title: title_2, body: body_2) }

  let(:entry_class_double) { double(:entry_class) }

  let(:diary) { described_class.new(entry_class_double) }

  it "can responde to add" do
    expect(diary).to respond_to(:add).with(2).arguments
  end

  it "can add an entry" do
    allow(entry_class_double).to receive(:new).and_return(entry_1)
    diary.add(title_1, body_1)
    expect(diary.entries).to eq([entry_1])
  end

  it "can create an index" do
    allow(entry_class_double).to receive(:new).and_return(entry_1)
    diary.add(title_1, body_1)
    allow(entry_class_double).to receive(:new).and_return(entry_2)
    diary.add(title_2, body_2)
    expect(diary.index).to eq("Hello\nMy day")
  end
end
