require_relative 'crud'

users = [
    {username: "tarun", password: "password1"},
    {username: "rick", password: "password2"},
    {username: "morty", password: "password3"},
    {username: "jessica", password: "password4"},
]

hashed_users = Crud.create_secure_user(users)

puts hashed_users