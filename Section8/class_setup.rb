class ApiConnector
    # attributes - with getters and setters
    attr_accessor :title, :description, :url

    # initialize methods
    # def initialize(title, description, url="bing.com")
    #     # we could setup vars, call other methods and more
    #     # instance var can be used in other parts of the app
    #     @title = title
    #     @description = description
    #     @url = url
    # end

    # initialize methods - named arg
    def initialize(title:, description: , url: url="bing.com")
       
        @title = title
        @description = description
        @url = url
        secret_msg
    end

    # polymorphism
    def api_logger
        puts "API Connector is starting..."
    end

    # methods
    def testing_initializers
        puts @title
        puts @description
        puts @url
    end

    private 
    def secret_msg
        puts "called a private method"
    end
end

class SmsConnector < ApiConnector
    def send_sms
        `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
    end

   
end

class PhoneConnector < ApiConnector
    def send_phone_call
        puts "sending phone call..."
    end

    def api_logger
        super # this takes in the parent class
        puts "Phone Connector is starting..."
    end
end

class EmailConnector < ApiConnector
    def send_email
        puts "sending email..."
    end
end

sms = SmsConnector.new(title: "Jeremy L date 11-24-2021", description: "date 11-24-2021", url: "http://edutechional-smsy.herokuapp.com/notifications")
phone = PhoneConnector.new(title: "My Title", description: "My Cool description")
email = EmailConnector.new(title: "My Title", description: "My Cool description")

# sms.send_sms
# phone.secret_msg
# email.send_email


phone.api_logger
# `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`

# http://edutechional-smsy.herokuapp.com/notifications