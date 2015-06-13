require 'yahoo_weatherman'

def determine_weath(city)
client = Weatherman::Client.new
weather = client.lookup_by_location(city)
text = weather.condition['text']
puts "The temperature is currently #{text.downcase}"

return weather
end 

puts "What is your city?"
city = gets
weather = determine_weath(city)

puts "The 5 day forecaset is:"

i=0

while (i<weather.forecasts.count)
	new_day = weather.forecasts[i]["day"].chomp
	new_low = weather.forecasts[i]["low"].to_s.chomp
	new_high = weather.forecasts[i]["high"].to_s.chomp
	new_text= weather.forecasts[i]["text"]
	puts "#{new_day}: #{new_text} with lows of #{new_low}, & highs of #{new_high}\n"
	i+=1
end	
