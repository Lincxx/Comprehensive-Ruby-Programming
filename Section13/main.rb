#an example rails routes | grep testimonial

arr = [1,3,2,12,1,2,3]

arr.grep(1)

filename = ['hey.rb', 'there.rb', 'index.html', 'style.css']

#on a very large array this wouldn't be very efficient 
puts filename.select {|x| x =~ /\.rb/}.map{|x| x[0..-4]}

# with grep - not used to often, but still pretty neat
puts filename.grep(/(.*)\.rb/){$1}

