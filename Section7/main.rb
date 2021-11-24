#-- Conditionals

# If else
x = 10 
y = 10

if x == y 
    # puts "x is the same as y"
else
    # puts "x and y are not the same"
end

# -- unless
players = ["Correa", "Carter", "Altuve"]

unless players.empty?
    players.each {|player| puts player}
end


players = []
# nothing is printed out - this is also the same as if !players.empty?
unless players.empty? 
    players.each {|player| puts player}
end

# alt syntax 
players = ["Correa", "Carter", "Altuve"]
players.each {|player| puts player} unless players.empty? 

# alt syntax with if 
players.each {|player| puts player} if !players.empty? 

#  -- if elsif else
x = 10
y = 100 
z = 10

if x ==y 
    puts "x is equal to y"
elsif x > y
    puts "x is greater than y"
else
    puts "blah"
end





