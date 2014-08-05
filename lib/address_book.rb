class Contacts
  def initialize(name)
    @name = name
    @phone = []
    @address = []
    @email = []
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

  def email
    @email
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
