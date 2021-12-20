#-- While loop
# i = 0

# while i < 10 
#     puts "Hey There"
#     i += 1
# end


# --  Each Iterator - very popular
arr = [23, 2323, 234,454,676,24,99,100]
# 2 different syntax
# arr.each do |i|
#     puts i
# end

# not a standard practice
# arr.each {|i| puts i}

# -- For loop
# for i in 0..42 do
#     puts i
# end

# -- Nested Iterator
# teams = {
#     "Houston Astros" => {
#         "first base" => "chris carter",
#         "second base" => "jose altuve",
#         "shortstop" => "Carlos Correa"
#     }, 
#     "Texas Rangers" => {
#         "first base" => "prince fielder",
#         "second base" => "r. odor",
#         "shortstop" => "elvis andrus"
#     }
# }
# # |interator_varaible|
# teams.each do |team, players|
#     puts team
#     players.each do |position, player|
#         puts "#{player} start at #{position}"
#     end
# end
    
# -- Select Method
# # given and array of integer
# #only grab the even intergers
# (1..10).to_a.select do |x|
#   puts x.even?
# end
# #  a short way 
# puts (1..10).to_a.select {|x| puts x.even?}

# # a even better syntax
# # https://www.udemy.com/course/comprehensive-ruby-programming-tutorial/learn/lecture/4413436
# puts (1..10).to_a.select( &:even?)

# select with comparsion 
# given and array of strings 
# only return the words that are over 5 letters
# %w creates an array of strings
# arr = %w(the quick brown fox jumped over the lazy dog)
# puts arr.select { |x| x.length > 5 }

# regex selector  =~
# given and array of strings 
# retrurn all the vowels
# puts %w(a b c d e f g).select {|vowel| vowel =~ /[aeiou]/}

# -- Map Method in Collections
# print ["1", "23.0", "0", "4"].map {|x| x.to_i }
# # sybmol block syntax
# print ["1", "23.0", "0", "4"].map(&:to_i)

# puts ("a".."g").to_a.map {|i| i * 2}

# print Hash[[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}]

puts Hash[%w(A dynamic open source programming language).map{|x| [x, x.length]}]
# something like a url pattern
x =  {:a => "foo", :b =>"bar"}.map{|a,b| "#{a}=#{b}"}.join('&')
puts x

# -- Inject Method - 
# totaling up values
total = 0 
[2,3,54,56,6765756,88,978675,5645,3].each do |i|
   total += i
end
puts total 

#  the + is a method in ruby
puts [2,3,54,56,6765756,88,978675,5645,3].inject(&:+)