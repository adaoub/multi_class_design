require "diary"
require "diary_entry"
require "contacts"

describe "integration" do
  it "returns all diary entries" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("title", "contents")
    diary.add(diary_entry)
    expect(diary.view_all).to eq [diary_entry]
  end
  it "returns the longest diary entry that can be read given wpm and minutes" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("title", "word1 word2 word3")
    diary.add(diary_entry1)
    diary_entry2 = DiaryEntry.new("title", "word1 word2")
    diary.add(diary_entry2)
    expect(diary.reading_time(3, 1)).to eq diary_entry1
  end

  it "fails if wpm is not positive" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("title", "word1 word2 word3")
    diary.add(diary_entry1)
    expect { diary.reading_time(-1, 1) }.to raise_error "WPM must be positive"
  end

  describe "contacts Class" do
    it "returns empty list when no contact is added" do
      diary = Diary.new
      contact = Contacts.new("name", 012345)

      expect(diary.view_contacts).to eq []
    end
    it "returns a list of added phone numbers" do
      diary = Diary.new
      contact = Contacts.new("name", "07900000")
      diary.add_contact(contact)
      contact2 = Contacts.new("name", "079000002131")
      diary.add_contact(contact2)
      expect(diary.view_contacts).to eq ["07900000", "079000002131"]
    end
  end
end
