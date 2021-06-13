class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end
end

class Scrambler
  def initialize(contents)
    @contents = contents
  end

  def scramble(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end
end

class Unscrambler
  def initialize(contents)
    @contents = contents
  end

  def unscramble(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
    end
    @contents = plain_chars.join
  end
end

class Reverser
  def initialize(contents)
    @contents = contents
  end

  def reverse
    @contents = @contents.reverse
  end
end

sd = ScrambledDiary.new("Hello")
sd.scramble_by_advancing_chars(3)
sd.read
# => Khoor
sd.unscramble_by_advancing_chars(3)
sd.read
# => Hello
sd.scramble_by_reversing
sd.read
# => olleH
