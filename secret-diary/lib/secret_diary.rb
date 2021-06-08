class SecretDiary
  def initialize
    @notes = []
  end

  def add_entry(note)
    @notes << note
  end
end
