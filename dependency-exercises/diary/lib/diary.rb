class Diary
  attr_reader :entries

  def initialize(entry_class = Entry)
    @entry_class = entry_class
    @entries = []
  end

  def add(title, body)
    @entries << @entry_class.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end

# diary = Diary.new
# diary.add("hey", "body of diary")
# p diary.add("hey 2", "body of diary")
# puts diary.index
