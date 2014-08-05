require './lib/address_book'

@current_contact = nil

def main_menu
  loop do
    puts "Press 'a' to add a contact or 'l' to list all of your contacts."
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_contacts
    elsif main_choice == 'l'
      list_contacts
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end


def add_contacts
  puts "Enter the name of your contact"
  input_name = gets.chomp
  Contacts.new(input_name).save
  Contacts.all.each do |contact|
  @current_contact = contact
end
  puts "name added.\n\n"

  puts "Enter a phone number for your contact"
  user_number = gets.chomp
  @current_contact.add_phone(user_number)
  puts "Phone number added!\n\n"

  puts "Enter an address"
  user_address = gets.chomp
  @current_contact.add_address(user_address)
  puts "Address added!\n\n"

  puts "Enter an email"
  user_email = gets.chomp
  @current_contact.add_email(user_email)
  puts "Email added!\n\n"
end

def list_contacts
  puts "your contact list:\n\n"
  Contacts.all.each do |contact|
    puts contact.name
  end
  puts "Type a contact name to view info."
  list_name = gets.chomp
  Contacts.all.each do |contact|
    if list_name == contact.name
      @current_contact = contact
      puts contact.phone
      puts contact.address
      puts contact.email
    end
  end
  puts "Type 'a' to add info or 'm' to go back to main menu"
  input = gets.chomp
  if input == 'a'
    add_info
  elsif input == 'm'
    main_menu
  else
    puts "Sorry that is not a valid option"
  end
end

def add_info
  puts "Type 'p' to add a phone number"
  puts "Type 'e' to add an email"
  puts "Type 'a' to add an address"
  input = gets.chomp
  if input == 'p'
    add_phone
  elsif input == 'e'
    add_email
  elsif input == 'a'
    add_address
  else
    list_contacts
  end
end

def add_phone
  puts "Enter a new telephone number"
  user_number = gets.chomp
  @current_contact.add_phone(user_number)
  puts "Phone number added!\n\n"
end

def add_email
  puts "Enter a new email address"
  user_email = gets.chomp
  @current_contact.add_email(user_email)
  puts "Email added!\n\n"
end

def add_address
  puts "Enter a new address"
  user_address = gets.chomp
  @current_contact.add_address(user_address)
  puts "Address added!\n\n"
end
# def edit_info

main_menu
