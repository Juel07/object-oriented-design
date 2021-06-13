require "security"

describe Security do
  subject(:security) { described_class.new }

  it "can lock initially" do
    expect(security.locked?).to eq true
  end
  it "can lock" do
    security.lock
    expect(security.locked?).to eq true
  end
  it "can unlock" do
    security.unlock
    expect(security.locked?).to eq false
  end
end
