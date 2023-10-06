users = [{ username: "zubaer", password: "zubaer" },
         { username: "sunny", password: "sunny" },
         { username: "faiad", password: "faiad" },
         { username: "rafi", password: "rafi" }]

def auth_user(username, password, users)
  users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end
  "creds incorrect"
end

attempts = 4
while attempts > 0
  puts "attempts remaining #{attempts}"
  print "username:"
  username = gets.chomp
  print "password:"
  password = gets.chomp
  auth = auth_user(username, password, users)
  puts auth
  puts "press n to quit"
  input = gets.chomp.downcase
  break if input == "n"
  attempts -= 1
end

