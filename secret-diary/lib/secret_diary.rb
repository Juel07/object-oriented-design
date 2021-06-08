class SecretDiary
  def initialize
    @notes = []
    @locked = false
  end

  def add_entry(note)
    @notes << note
  end

  def get_entries
    @notes
  end

  def lock
    @locked = true
  end
end
