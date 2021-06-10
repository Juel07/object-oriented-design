# Understands connecting to a mail server and sending a fancy or non-fancy message to the user
class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    mail_server.send_message({ to: @email, body: Body.new.body(@fancy) })
  end
end

class Body
  def body(fancy)
    base_body = "Welcome to MyProduct"
    fancy ? "#{base_body}, fancy person!" : base_body
  end
end
