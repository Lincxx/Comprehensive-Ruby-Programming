#-- methods

# def baseball_team_list
#     ["A's", "Tigers", "Cubs"]
# end

# #-- return - no reason to use it, unless something the following
# def second_baseball_team_list
#     x = 10
#     return ["A's", "Tigers", "Cubs"] if x == 10
#     ["Yankees", "Mets"]
# end

# puts baseball_team_list # remember puts is iterator over these value
# puts second_baseball_team_list # remember puts is iterator over these value

# #-- Difference between puts and returning values
# def void_method 
#     puts "hey"
# end

# void_method

# def method_with_return
#     return "hey there"
# end
# p method_with_return

# x = void_method 
# p x

#-- Difference between class methods and instance methods

# class Invoice
#     #class method
#     def self.print_out
#         "Printed out invoice"
#     end

#     #instance method
#     def convert_to_pdf
#         "Converted to PDF"
#     end
# end

# puts Invoice.print_out

# i = Invoice.new
# puts i.convert_to_pdf

#-- Procs - aka closure - methods that can be stored in variables - also nice to know that a while process can be put inside a var
# full_name = Proc.new {|first, last| first + " " + last}
# # can be called one of 2 ways
# puts full_name["Jeremy", "Lincoln"]
# puts full_name.call("Jeremy", "Lincoln")

# name2 = Proc.new {|first| first * 5}
# puts name2["Tim"]

# # an other way of doing this 
# their_name = Proc.new do |first| 
#     first * 5
# end

# puts their_name.call("Jeff")

#-- Lamda
# first_name  = lambda {|first, last| first + " " + last}
# puts first_name["jeremy", "lincoln"]

# # will see this more often
# their_name = ->(first, last) {first + " " + last}
# puts their_name["Jeff", "Williams"]
# puts their_name.call("Jeff", "Williams")

#-- difference Proc and Lambda
# lambda count the args being passed into them, procs do not
# full_name = lambda {|first, last| first + " " + last}
# puts full_name.call("Jeremy","Lee", "Lincoln")

# full_name = Proc.new {|first, last| first + " " + last}
# puts full_name.call("Jeremy","Lee", "Lincoln")

#return behavior
# def my_method_lambda
#    x = lambda {return} 
#    x.call
#    puts "text within the method"
# end

# my_method_lambda

# def my_method_proc
#     x = Proc.new {return} 
#     x.call
#     puts "text within the method"
#  end
 
#  my_method_proc

 #-- Method args
# basic arg
# def full_name(first_name, last_name)
#     first_name + " " + last_name 
# end

# puts full_name("jeff", "miller")

# named arg - order doesn't matter with name args
# def print_address(city:, state:, zip:)
#     puts city
#     puts state
#     puts zip
# end

# print_address(city: "flint", state: "mi", zip:"48503")

# def sms_generator(api_key:, num:, msg:, local:) 
#     #magic sms stuff
# end

# sms_generator(api_key:"fdf4#$fdghe:", num:55555555, msg:'hey', local:'US')



# # default
# def stream_movie(title:, lang:'eng')
#     puts title
#     puts lang
# end
# stream_movie(title:"the godfather")

#-- splat arg (ruby 3) - this returns an array
# def customer_assignments( customer_1, customer_2, customer_3 )
#     "Assigning customer: #{customer_1}, #{customer_2}, #{customer_3}"
# end

# def customer_assignments( *customers)
#     "Assigning customer: #{customers}"
# end

# puts customer_assignments("apple", "google", "facebook") 


# def customer_assignments(*customers)
#    customers.each do |customer|
#     puts customer.upcase
#    end
# end

# customer_assignments("apple", "google", "facebook") 

#-- How to Work with Keyword and Optional Arguments in Ruby Methods (Ruby 3)
def registration(email:, password:, **kwargs)
    puts "Building account for: #{email}"

    if kwargs[:role ]
        puts "With role: #{kwargs[:role]}"
    end

    if kwargs[:plan]
        puts "With plan: #{kwargs[:plan]}"
    end
end

registration(email: "email@mail.com", password:"12323", role: "admin", plan: "super deluxe")