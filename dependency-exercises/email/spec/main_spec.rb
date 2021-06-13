require "main"

describe SayHello do
  # let(:message_double) { double :msg, send_email: "Email sent" }
  # let(:email_client_double) { double :client, message: message }

  let(:email_client) { EmailClient.new }
  subject(:say_hello) { described_class.new(email_client) }

  it "can send an email" do
    expect(say_hello.run).to eq("Email sent")
  end
end
