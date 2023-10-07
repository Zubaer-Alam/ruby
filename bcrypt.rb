require 'bcrypt'

users = [{ username: "zubaer", password: "zubaer" },
         { username: "sunny", password: "sunny" },
         { username: "faiad", password: "faiad" },
         { username: "rafi", password: "rafi" }]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(hash)
  hash.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
  hash
end

create_secure_users(users)
puts users

def authenticate_user(username, password, list)
  list.each do |user|
    return user if user[:username] == username && user[:password] == password
  end
  "Incorrect Credentials"
end

print "Username:"
username = gets.chomp

print "Password:"
password = gets.chomp

puts authenticate_user(username, password, users)