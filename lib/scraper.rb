require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  attr_accessor :students

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student-card")
    students = []
    
    student_cards.map do |card|
      student << {
        :name => card.css(""),
        :location => card.css(""),
        :profile_url => card.css("")
      }
    end

  end

  def self.scrape_profile_page(profile_url)
    
  end

end

