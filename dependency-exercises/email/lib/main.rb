class EmailClient
  def message
    Message.new
  end
end

class Message
  def send_email(to, body)
    "Email sent"
  end
end

class SayHello
  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    @email.message.send_email(
      "friend@example.com",
      "HELLO!"
    )
  end
end
