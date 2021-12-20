class SmsConnector
    # attributes
    attr_accessor :title, :description, :url

    # initialize methods - named arg
    def initialize(title:, description: , url: url="bing.com")   
        @title = title
        @description = description
        @url = url
    end

    # methods
    def send_sms
        puts @title
        puts @description
        puts @url
    end

end

class MailerConnector
    # attributes
    attr_accessor :title, :description, :url

    # initialize methods - named arg
    def initialize(title:, description: , url: url="bing.com")   
        @title = title
        @description = description
        @url = url
    end

    # methods
    def send_mail
        puts @title
        puts @description
        puts @url
    end

end