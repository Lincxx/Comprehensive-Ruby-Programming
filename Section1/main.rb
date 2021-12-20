#-- variables
name = "Jeremy"

address = ["123 street", "here", "mi"]

#-- option for printing
puts "A string"
print "A string"
p "A String" 
# p this will not stop exectution from, so if we would like to debug and let the program continue

puts [1,2,3,4] # this will interate over the values
p [1,2,3,4] # this iwll print out the array

#-- using gets (ask for the value) and chomp (removes \n)
puts "What is your name"
name = gets.chomp

#-- variable types and scope
#Local 
10.times do
    x = 10
    puts x
end 

#Global $ - this can be a horrible idea
10.times do
    $x = 10
   
end 

p $x

#Instance - this is available to that instance, so within rails we can share an instance var from a controller to a view for example
@batting_avg = 300

#Constant - this is not like other constant, ruby will allow us to change the value
TEAM = "Red Wings"
TEAM = "Maple Leafs"

puts TEAM

#Class - might not use this one as much either
class Person 
    @@name 
end


