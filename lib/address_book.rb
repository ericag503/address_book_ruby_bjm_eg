class Contacts
  def initialize(name)
    @name = name
    @phone = []
    @address = []
  end

  def name
    @name
  end

  def phone
    @phone
  end

  def address
    @address
  end

  def add_phone(phone)
    @phone << phone
  end

  def add_address(address)
    @address << address
  end
end
