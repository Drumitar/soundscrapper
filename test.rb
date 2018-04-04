require 'nokogiri' 
require 'open-uri'

doc = Nokogiri::HTML(open("https://www.myinstants.com/index/ca/"))

links = [] 

doc.css("div.instant").each do |link|
	links << "https://www.myinstants.com" + link.css("a")[0]["href"]
end 
	
	
