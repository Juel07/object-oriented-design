require "secret_diary"

describe SecretDiary do
  it "can be locked" do
    subject.unlock
    expect(subject.lock).to eq(true)
  end

  context "When diary is locked" do
    it "throws error when adding entry" do
      subject.lock
      expect { subject.add_entry("note 1") }.to raise_error("Diary locked!")
    end
    it "throws error when getting entries" do
      subject.lock
      expect { subject.get_entries }.to raise_error("Diary locked!")
    end
  end

  it "can be unlocked" do
    subject.unlock
    expect(subject.unlock).to eq(false)
  end

  context "when diary is unlocked" do
    it "can add entry" do
      subject.unlock
      expect(subject.add_entry("My name is Jen")).to eq(["My name is Jen"])
    end
    it "can get all entries" do
      subject.unlock
      subject.add_entry("note 1")
      subject.add_entry("note 2")
      expect(subject.get_entries).to eq(["note 1", "note 2"])
    end
  end
end
