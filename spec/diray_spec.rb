require "diary"

describe Diary do
  it "returns empty list when no entries are added" do
    diary = Diary.new
    expect(diary.view_all).to eq []
  end
end
