#-- Strings
 "This is a string...WOOT!!!"


 #-- String Interpolation 
 puts "Name a animal"
 animal = gets.chomp

 puts "Name a noun"
 noun = gets.chomp

 p "The quick brown #{animal} jumped over the lazy #{noun}"

puts "2 + 2 = #{2+2}"

 #-- String Manipulation
puts "Jeremy".upcase # good for case insensitive search
puts "Jeremy".downcase # good for case insensitive search
puts "Jeremy".swapcase
puts "Jeremy".reverse
# chaining
puts "Jeremy".reverse.upcase

#! 
puts "Jeremy".downcase
puts "Jeremy".downcase! # ! changing the org version, also the ! will return an error if there is a problem (ideal for development)

 #-- String Substitution 
str =  "The quick brown fox jumped over the quick dog"
#puts str.sub("quick", "slow")
puts str.gsub!("quick", "slow") # global substitution, with the org value being overwritten 
puts str

#--  Split and Strip 
str =  "    The quick brown fox jumped over the quick dog    "
puts str.strip()

str = "The quick brown fox jumped over the quick dog"
puts str.split
p str.split.length
p str.split(//) # all the letters and spaces

