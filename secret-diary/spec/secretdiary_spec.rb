require "secret_diary"

describe SecretDiary do
  it "can add entry" do
    expect(subject.add_entry("My name is Jen")).to eq(["My name is Jen"])
  end
end
