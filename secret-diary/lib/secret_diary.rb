require_relative "security"

class SecretDiary
  attr_reader :notes

  def initialize(security = Security.new)
    @notes = []
    @security = security
  end

  def add_entry(note)
    raise "Diary locked!" if secure?
    @notes << note
  end

  def get_entries
    raise "Diary locked!" if secure?
    @notes
  end

  def secure?
    @security.locked?
  end
end
