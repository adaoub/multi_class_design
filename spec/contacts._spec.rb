require "contacts"

describe Contacts do
  it "returns number and name as strings" do
    contact = Contacts.new("name", "07000000")
    expect(contact.number).to eq "07000000"
    expect(contact.name).to eq "name"
  end
end
