require 'rspec'
require 'address_book'
# require 'contacts'

describe Contacts do
  it"should create an instance of a contact" do
    contacts = Contacts.new('Steve Mason')
    expect(contacts).to be_an_instance_of Contacts
  end

  it "should give a contact a name" do
    contacts = Contacts.new('Steve Mason')
    expect(contacts.name).to eq 'Steve Mason'
  end

  it "adda a phone number" do
    contacts = Contacts.new('Steve Mason')
    phone = '555-555-5555'
    contacts.add_phone(phone)
    expect(contacts.phone).to eq ['555-555-5555']
  end

  it "adds an address" do
    contacts = Contacts.new('Steve Mason')
    address = "123 Stoney Way"
    contacts.add_address(address)
    expect(contacts.address).to eq ['123 Stoney Way']
  end
end

