require "secret_diary"

describe SecretDiary do
  #   it "can add entry" do
  #     expect(subject.add_entry("My name is Jen")).to eq(["My name is Jen"])
  #   end
  #   it "can get all entries" do
  #     subject.add_entry("note 1")
  #     subject.add_entry("note 2")
  #     expect(subject.get_entries).to eq(["note 1", "note 2"])
  #   end
  #   it "can be locked" do
  #     expect(subject.lock).to eq(true)
  #   end
  #   it "can be unlocked" do
  #     expect(subject.unlock).to eq(false)
  #   end
  context "When diary is locked" do
    it "throws error when adding entry" do
      subject.lock
      expect { subject.add_entry("note 1") }.to raise_error("Diary locked!")
    end
  end
end
