puts "Enter your first name "
first_name = gets.chomp
puts "Enter your last name "
last_name = gets.chomp
full_name="#{first_name} #{last_name}"

puts "Your first name is : #{first_name}"
puts "Your last name is : #{last_name}"
puts "Your full name reversed is : #{full_name.reverse}"
puts "Your full name contains total #{full_name.gsub!(/[^A-Za-z]/,"").length} Characters"

