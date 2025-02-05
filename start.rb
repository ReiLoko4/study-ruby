
require 'net/http'
require 'uri'

puts "Hello World!"

user_input = gets.chomp


uri = URI.parse('http://www.google.com/search?q=' + user_input)
http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Get.new(uri.request_uri) 

response = http.request(request)

puts response.body	

