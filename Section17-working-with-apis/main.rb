require "rubygems"
require "httparty"

# class EdutechionalResty 
#     include HTTParty
#     base_uri "edutechional-resty.herokuapp.com"

#     def posts
#         self.class.get("/posts.json")
#     end
# end

# erdutechional_resty = EdutechionalResty.new

# puts erdutechional_resty.posts

# -------------------Httpary methods-------------------

# response = HTTParty.get("http://api.stackexchange.com/2.2/questions?site=stackoverflow")

# puts response.body
# puts response.code
# puts response.message
# puts response.headers.inspect


# --------------Custom Connector---------------------
# class StackExchange
#     include HTTParty
#     base_uri "api.stackexchange.com"

#     def initialize(service, page)
#         @options = {query: {site: service}}
#     end

#     def questions
#         self.class.get('/2.2/questions', @options)
#     end

#     def users
#         self.class.get('/2.2/users', @options)
#     end
# end

# stack_exchange = StackExchange.new('stackoverflow', 1)
# puts stack_exchange.users
# puts stack_exchange.questions



# -------Parsing Data--------
class EdutechionalResty 
    include HTTParty
    base_uri "edutechional-resty.herokuapp.com"

    def posts
        self.class.get("/posts.json")
    end
end

erdutechional_resty = EdutechionalResty.new
# puts erdutechional_resty.posts

erdutechional_resty.posts.each do |post|
    puts "Title: #{post['title']} | Description: #{post['description']}"
end