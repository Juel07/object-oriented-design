require "secret_diary"
require "security"

describe SecretDiary do
  let(:security) { Security.new }
  subject(:secret_diary) { described_class.new(security) }

  it "has no notes in the beginning" do
    expect(secret_diary.notes).to be_empty
  end

  it "can be locked" do
    security.lock
    expect(secret_diary.secure?).to eq true
  end

  context "When diary is locked" do
    it "throws error when adding entry" do
      security.lock
      expect { secret_diary.add_entry("note 1") }.to raise_error "Diary locked!"
    end
    it "throws error when getting entries" do
      security.lock
      expect { secret_diary.get_entries }.to raise_error "Diary locked!"
    end
  end

  it "can be unlocked" do
    security.unlock
    expect(secret_diary.secure?).to eq false
  end

  context "when diary is unlocked" do
    it "can add entry" do
      security.unlock
      expect(secret_diary.add_entry("My name is Jen")).to eq ["My name is Jen"]
    end
    it "can get all entries" do
      security.unlock
      secret_diary.add_entry("note 1")
      secret_diary.add_entry("note 2")
      expect(secret_diary.get_entries).to include "note 1", "note 2"
    end
  end
end
