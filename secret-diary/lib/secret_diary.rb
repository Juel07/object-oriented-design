class SecretDiary
  def initialize
    @notes = []
    @locked = true
  end

  def add_entry(note)
    throw_error if @locked == true
    @notes << note
  end

  def get_entries
    @notes
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def throw_error
    raise "Diary locked!"
  end
end
