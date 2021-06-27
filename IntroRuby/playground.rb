# puts "Hello world"

# def say_hello(thing_to_say)
#     puts thing_to_say
# end

# say_hello "Hello ruby programming"

# String manipulation

# first_name = "Tarun"
# last_name = "Kantiwal"

# puts first_name + " " + last_name

# String interpolationn
# string interpolation only works with double quotes(PToR)
# puts "My name is #{first_name} #{last_name}"

#Find methods
# puts first_name.class
# first_name.methods


# Get input from user

# puts "What's your name"
# first_name = gets.chomp
# puts "Thank you, you said your first name is #{first_name}"

# puts "Enter a number to multiply by 2"
# input = gets.chomp
# puts input.to_i*2

# Extracting logic to methods
#Branching if else comparison operator

# Array

# Hashes (Dictionary)

# sample_hash = {'a'=>1, 'b'=>2, 'c'=>3}
# my_hash = {'name'=>"Tarun", 'fav'=>"Red"}
# p my_hash['fav']

# Authenticator Project Homework

# users = [
#     {username: "tarun", password: "password1"},
#     {username: "rick", password: "password2"},
#     {username: "morty", password: "password3"},
#     {username: "jessica", password: "password4"},
# ]

# # We will learn Hash, Array, Branching, While loop and designing programme execution flow


# def authenticator_user(username, password, list_of_users)
#   list_of_users.each do |user_record|
#     if user_record[:username] == username && user_record[:password] == password
#       return user_record
#     end
#   end
#   return "You credentials are not correct."
# end

# puts "Welcome to the authenticator"
# 25.times {print "-"}
# puts "This program will take input from the user and compare the password"
# puts "If the password is correct your will get the object back"

# # first_name = gets.chomp
# # password = gets.chomp

# attempts = 1
# while attempts<4
#   puts "Get username"
#   username = gets.chomp
#   puts "Password"
#   pass = gets.chomp
#   authentication_message = authenticator_user(username, pass, users)
#   puts authentication_message
#   puts "Press n to quit or any other key to continue : "
#   input = gets.chomp.downcase 
#   break if input == "n"
#   attempts += 1
# end

# Homework 2

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

def get_city_name(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want to lookup the area code for ?"
  puts get_city_name(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered the incorrect city"
  end
  # dial_book
end