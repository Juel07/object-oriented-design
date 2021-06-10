def send_email_to(user)
  email = user.email.strip
  mail = Mail.new(email)

  send_msg(mail)
end

def send_msg(mail)
  mail.send_message
end
