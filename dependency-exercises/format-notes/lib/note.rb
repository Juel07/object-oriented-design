class Note
  def initialize(title, body, formatter)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

# note = Note.new("Hello", "Welcome to Notes")
# puts note.display
