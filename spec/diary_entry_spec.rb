require "diary_entry"

describe DiaryEntry do
  it "returns title and conents as strings" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end

  it "returns number of words" do
    diary_entry = DiaryEntry.new("title", "contents " * 100)
    expect(diary_entry.count_words).to eq 100
  end
end
