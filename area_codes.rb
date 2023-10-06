dial_book = {
  "newyork" => "212",
  "newbrunswik" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paoloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(hash)
  hash.each do |key, value|
    puts key
  end
end

def get_area_code(hash, key)
  hash.each do |k, v|
    return v if k == key
  end
  "Not found"
end

loop do
  puts "Do you want to look up an area code based in a city name?(Y/N)"
  answer = gets.chomp.downcase

  break if answer != "y"

  puts "Choose a city:"

  get_city_names(dial_book)

  puts "Enter Selection:"
  city_name = gets.chomp
  puts get_area_code(dial_book, city_name)
end