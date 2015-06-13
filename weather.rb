require 'yahoo_weatherman'

def determine_weath(zipcode)
client = Weatherman::Client.new
weather = client.lookup_by_location(zipcode)
text = client.lookup_by_location(zipcode).condition['text']
puts "The temperature is currently #{text.downcase}"

return weather
end 

puts "What is your zipcode?"
zipcode = gets.to_s
weather = determine_weath(zipcode)