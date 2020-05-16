require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    doc.css
    
    names = doc.css()
    names.each do |name|
      puts name.text.strip
    end
    
    locations = doc.css()
    locations.each do |location|
      puts location.text.strip
    end
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

