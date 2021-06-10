class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    url = "http://mixmax.com"
    key = "f20506xx808c"
    server = MailServer.connect(url, api_key: key)
    welcome_msg = "Welcome to MyProduct"

    if fancy
      server.send_message({ to: @email, body: "#{welcome_msg}, fancy person!" })
    else
      server.send_message({ to: @email, body: "#{welcome_msg}" })
    end
  end
end
