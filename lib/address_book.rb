class Contacts

  attr_reader:name, :phone, :address, :email


    @@all_contacts = []
  def initialize(name)
    @name = name
    @phone = []
    @address = []
    @email = []
  end

  def Contacts.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def add_phone(phone)
    @phone << phone
  end

  def add_address(address)
    @address << address
  end

  def add_email(email)
    @email << email
  end
end
