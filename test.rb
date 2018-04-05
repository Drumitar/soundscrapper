require 'nokogiri' 
require 'open-uri'

@links = [] 

doc = Nokogiri::HTML(open("https://www.myinstants.com/index/ca/"))

doc.css("div.instant").each do |link|
	@links << "https://www.myinstants.com" + link.css("a")[0]["href"]
end 

def print_links
	@links.each do |l|
		puts l 
	end 
end 

print_links
	
	
