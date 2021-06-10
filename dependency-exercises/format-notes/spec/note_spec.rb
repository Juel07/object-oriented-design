require "note"

describe Note do
  let(:note_formatter) { double("formatter_double", format: "Title: Hello\nWelcome to Notes") }
  let(:note) { described_class.new("Hello", "Welcome to Notes", note_formatter) }

  it "can respond to display" do
    expect(note).to respond_to(:display)
  end

  it "can display formatted notes" do
    expect(note.display).to eq("Title: Hello\nWelcome to Notes")
  end
end

describe NoteFormatter do
  it "can format notes" do
    expect(subject).to respond_to(:format).with(1).argument
  end
end
