# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
 attr_accessor :url #do i need this? why not? 
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
  

    def parse_json
        parsed = JSON.parse(self.get_response_body)
        # parsed.collect do |element|
        #     element
        #  end 
        #we dont need ot iterate over anything 
        #because we are just asking for a general 
        #parsed JSON object with all data. 
        parsed
    end

 

end