def send_email_to(user)
  email = Mail.new
  user_email = user.email.strip
  email(user_email).send_message
end
