# -- Arrays
x = [12,34,45,6,8]

# when creating array like this,  we need to be aware of this. It will fill the rest of the array with nils
y = Array.new
y[0] = 543
y[10] = 32

# y.each do |i|
#     puts i
# end

# -- Deleting item 
x = ["sdsd", 232,45.5, 34 ,4, true, 32, "hi", 4, 4 ]

x.delete(4)
# puts x

# an other way to delete
x.delete_at(4)
# puts x
# p

y = x.delete_at(4)

batting_avgs = [0.300, 0.220, 0.180, 0.250]
batting_avgs.delete_if {|avg| avg < 0.24}

# print batting_avgs

# -- Join method array
teams = ["astros", "tiger", "met", "rangers"]
# print teams

# converts an array in a string with whatever sperator we want to use
teams.join('&')
teams.join('$')
teams.join(' ')
teams.join('-')
teams.join(',')
# and so on


# Push and Pop method
teams = ["astros", "tiger", "met", "rangers"]
#  print teams 
teams.push('marlins')
# print teams 
teams.push('red sox', 'blue jays')
# print teams 

# this will store the pop element into the z var
z = teams.pop

# -- Hash - also known as a dictionary 
# modern way
positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa"  }
# print positions

# org ruby hash
positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa"  }
# print positions

#  alt way
positions = { :first_base => "Chris Carter", :second_base => "Jose Altuve", :short_stop => "Carlos Correa"  }

# print positions[:short_stop]

# -- Delete elements from a hash
people = {jeremy: 44, tiffany: 27, tim: 17, heather: 29}
people.delete(:tim)
# p people

# -- iterate over a Hash 
people = {jeremy: 44, tiffany: 27, tim: 17, heather: 29}
people.each_key do |key|
    #puts key
end

people.each_value do |v|
    #puts v
end

# -- Helpful Hash methods
people = {jeremy: 44, tiffany: 27, tim: 17, heather: 29}

# add to a hash
people[:leann] = 42

# revsere the hash key , value
# puts people.invert

#  2 hashs
people_2 = people.invert
p people_2

x= people.merge(people_2)
p x

# convert to an array
p people.to_a

# all keys
p people.keys

# all values
p people.values
