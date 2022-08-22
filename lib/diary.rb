class Diary
  def initialize
    @list = []
    @contact = []
  end

  def add(entry)
    @list << entry
  end

  def view_all
    @list
  end

  def reading_time(wpm, minutes)
    fail "WPM must be positive" unless wpm.positive?
    @list.select { |entry| entry.count_words <= wpm * minutes }
      .sort_by { |entry| entry.count_words }.last
  end

  def add_contact(contact_entry)
    @contact << contact_entry
  end

  def view_contacts
    numbers = []
    @contact.each do |number|
      numbers << number.number
    end
    numbers
  end
end
