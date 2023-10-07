class Student
  attr_accessor :first_name, :last_name, :username, :email, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "Name : #{first_name} #{last_name}
Username:#{username}
Email:#{email}
Password:#{password}"
  end
end

zubaer = Student.new("Zubaer", "Alam", "DeadlyBhai", "zobaeralam@iut-dhaka.edu", "123456789")
sunny = Student.new("Saidul", "Arefin", "codeninja", "sunny@gmail.com", "123123123")

puts zubaer
puts sunny