class User
  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
    @auth = Auth.new
  end

  def profile(password)
    @auth.authenticate(password)
    puts "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Auth
  def initialize
    @password = "123"
  end

  def authenticate(user_password)
    puts user_password == @password
  end
end

# user = User.new("Jen", "Software Engineer", 23)
# user.profile("123")
# => true
# => Jen, born in 1998: Software Engineer
