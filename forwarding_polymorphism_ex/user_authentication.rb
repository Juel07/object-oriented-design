class User
  def initialize(name, bio, age, auth = Auth.new)
    @name = name
    @bio = bio
    @age = age
    @auth = auth
  end

  def profile(password)
    @auth.authenticate(password)
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Auth
  def initialize
    @password = password
  end

  def authenticate(user_password)
    return true if user_password == @password
    false
  end
end
